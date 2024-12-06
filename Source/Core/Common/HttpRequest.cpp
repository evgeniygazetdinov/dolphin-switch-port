// Copyright 2017 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#include "Common/HttpRequest.h"
#include "Common/Logging/Log.h"

namespace Common
{
class HttpRequest::Impl final
{
public:
  enum class Method
  {
    GET,
    POST,
  };
  explicit Impl(std::chrono::milliseconds timeout_ms, ProgressCallback callback) {}
  bool IsValid() const { return false; }
  void SetCookies(const std::string& cookies) {}
  void UseIPv4() {}
  void FollowRedirects(long max) {}
  s32 GetLastResponseCode() { return 400; }
  Response Fetch(const std::string& url, Method method, const Headers& headers, const u8* payload,
                size_t size, AllowedReturnCodes codes = AllowedReturnCodes::Ok_Only)
  {
    ERROR_LOG_FMT(COMMON, "Network functionality is not available on Nintendo Switch");
    return {};
  }
  std::string EscapeComponent(const std::string& string) { return string; }
};

HttpRequest::HttpRequest(std::chrono::milliseconds timeout_ms, ProgressCallback callback)
    : m_impl(std::make_unique<Impl>(timeout_ms, std::move(callback)))
{
}

HttpRequest::~HttpRequest() = default;

bool HttpRequest::IsValid() const
{
  return m_impl != nullptr;
}

void HttpRequest::SetCookies(const std::string& cookies)
{
  m_impl->SetCookies(cookies);
}

void HttpRequest::UseIPv4()
{
  m_impl->UseIPv4();
}

void HttpRequest::FollowRedirects(long max)
{
  m_impl->FollowRedirects(max);
}

std::string HttpRequest::EscapeComponent(const std::string& string)
{
  return m_impl->EscapeComponent(string);
}

s32 HttpRequest::GetLastResponseCode() const
{
  return m_impl->GetLastResponseCode();
}

HttpRequest::Response HttpRequest::Get(const std::string& url, const Headers& headers,
                                     AllowedReturnCodes codes)
{
  return m_impl->Fetch(url, Impl::Method::GET, headers, nullptr, 0, codes);
}

HttpRequest::Response HttpRequest::Post(const std::string& url, const std::vector<u8>& payload,
                                      const Headers& headers, AllowedReturnCodes codes)
{
  return m_impl->Fetch(url, Impl::Method::POST, headers, payload.data(), payload.size(), codes);
}

HttpRequest::Response HttpRequest::Post(const std::string& url, const std::string& payload,
                                      const Headers& headers, AllowedReturnCodes codes)
{
  return m_impl->Fetch(url, Impl::Method::POST, headers,
                      reinterpret_cast<const u8*>(payload.data()), payload.size(), codes);
}

} // namespace Common
