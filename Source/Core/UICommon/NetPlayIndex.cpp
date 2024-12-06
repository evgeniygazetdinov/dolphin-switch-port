// Copyright 2019 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#include "UICommon/NetPlayIndex.h"

#include <chrono>
#include <numeric>
#include <string>

#include <picojson.h>

#include "Common/Common.h"
#include "Common/HttpRequest.h"
#include "Common/Thread.h"
#include "Common/Version.h"

#include "Core/Config/NetplaySettings.h"

NetPlayIndex::NetPlayIndex() = default;

NetPlayIndex::~NetPlayIndex()
{
  if (!m_secret.empty())
    Remove();
}

static std::optional<picojson::value> ParseResponse(const Common::HttpRequest::Response& response)
{
  const std::string response_string(reinterpret_cast<const char*>(response.data()),
                                    response.size());

  picojson::value json;

  const auto error = picojson::parse(json, response_string);

  if (!error.empty())
    return {};

  return json;
}


void NetPlayIndex::SetPlayerCount(int player_count)
{
  m_player_count = player_count;
}

void NetPlayIndex::SetGame(std::string game)
{
  m_game = std::move(game);
}

void NetPlayIndex::Remove()
{
  if (m_secret.empty())
    return;

  m_session_thread_exit_event.Set();

  if (m_session_thread.joinable())
    m_session_thread.join();

  // We don't really care whether this fails or not
  Common::HttpRequest request;
  request.Get(Config::Get(Config::NETPLAY_INDEX_URL) + "/v0/session/remove?secret=" + m_secret,
              {{"X-Is-Dolphin", "1"}}, Common::HttpRequest::AllowedReturnCodes::All);

  m_secret.clear();
}

std::vector<std::pair<std::string, std::string>> NetPlayIndex::GetRegions()
{
  return {
      {"EA", _trans("East Asia")},     {"CN", _trans("China")},         {"EU", _trans("Europe")},
      {"NA", _trans("North America")}, {"SA", _trans("South America")}, {"OC", _trans("Oceania")},
      {"AF", _trans("Africa")},
  };
}

// This encryption system uses simple XOR operations and a checksum
// It isn't very secure but is preferable to adding another dependency on mbedtls
// The encrypted data is encoded as nibbles with the character 'A' as the base offset

bool NetPlaySession::EncryptID(std::string_view password)
{
  if (password.empty())
    return false;

  std::string to_encrypt = server_id;

  // Calculate and append checksum to ID
  const u8 sum = std::accumulate(to_encrypt.begin(), to_encrypt.end(), u8{0});
  to_encrypt += sum;

  std::string encrypted_id;

  u8 i = 0;
  for (const char byte : to_encrypt)
  {
    char c = byte ^ password[i % password.size()];
    c += i;
    encrypted_id += 'A' + ((c & 0xF0) >> 4);
    encrypted_id += 'A' + (c & 0x0F);
    ++i;
  }

  server_id = std::move(encrypted_id);

  return true;
}

std::optional<std::string> NetPlaySession::DecryptID(std::string_view password) const
{
  if (password.empty())
    return {};

  // If the length of an encrypted session id is not divisble by two, it's invalid
  if (server_id.empty() || server_id.size() % 2 != 0)
    return {};

  std::string decoded;

  for (size_t i = 0; i < server_id.size(); i += 2)
  {
    char c = (server_id[i] - 'A') << 4 | (server_id[i + 1] - 'A');
    decoded.push_back(c);
  }

  u8 i = 0;
  for (auto& c : decoded)
  {
    c -= i;
    c ^= password[i % password.size()];
    ++i;
  }

  // Verify checksum
  const u8 expected_sum = decoded[decoded.size() - 1];

  decoded.pop_back();

  const u8 sum = std::accumulate(decoded.begin(), decoded.end(), u8{0});

  if (sum != expected_sum)
    return {};

  return decoded;
}

const std::string& NetPlayIndex::GetLastError() const
{
  return m_last_error;
}

bool NetPlayIndex::HasActiveSession() const
{
  return !m_secret.empty();
}

void NetPlayIndex::SetErrorCallback(std::function<void()> callback)
{
  m_error_callback = std::move(callback);
}

std::optional<std::vector<NetPlaySession>>
NetPlayIndex::List(const std::map<std::string, std::string>& filters)
{
  Common::HttpRequest request;
  request.UseIPv4();

  std::string list_url = Config::Get(Config::NETPLAY_INDEX_URL) + "/v0/list";
  if (!filters.empty())
  {
    list_url += '?';
    for (const auto& [key, value] : filters)
    {
      list_url += key;
      list_url += '=';
      list_url += request.EscapeComponent(value);
      list_url += '&';
    }
    list_url.pop_back();
  }

  auto response = request.Get(list_url, {{"X-Is-Dolphin", "1"}});

  if (!response)
    return std::nullopt;

  auto json = ParseResponse(response);
  if (!json)
    return std::nullopt;

  std::vector<NetPlaySession> sessions;
  const auto& sessions_json = json->get<picojson::array>();
  sessions.reserve(sessions_json.size());

  for (const auto& session_json : sessions_json)
  {
    NetPlaySession session;
    const auto& obj = session_json.get<picojson::object>();

    session.name = obj.at("name").get<std::string>();
    session.region = obj.at("region").get<std::string>();
    session.method = obj.at("method").get<std::string>();
    session.game_id = obj.at("game").get<std::string>();
    session.server_id = obj.at("server_id").get<std::string>();
    session.has_password = obj.at("password").get<bool>();
    session.player_count = static_cast<int>(obj.at("player_count").get<int64_t>());
    session.port = static_cast<int>(obj.at("port").get<int64_t>());
    session.in_game = obj.at("in_game").get<bool>();
    session.version = obj.at("version").get<std::string>();

    sessions.push_back(std::move(session));
  }

  return sessions;
}
