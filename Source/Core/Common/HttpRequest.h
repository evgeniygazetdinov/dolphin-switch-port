// Copyright 2017 Dolphin Emulator Project
// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once

#include <chrono>
#include <functional>
#include <map>
#include <memory>
#include <optional>
#include <string>
#include <vector>

#include "Common/CommonTypes.h"

namespace Common
{
class HttpRequest final
{
public:
  // Return false to abort the request
  using ProgressCallback =
      std::function<bool(s64 dltotal, s64 dlnow, s64 ultotal, s64 ulnow)>;

  explicit HttpRequest(std::chrono::milliseconds timeout_ms = std::chrono::milliseconds{3000},
                      ProgressCallback callback = {});
  ~HttpRequest();
  bool IsValid() const;

  class Response : public std::vector<u8> {
  public:
    using std::vector<u8>::vector;  // Inherit constructors
    bool has_value() const { return !empty(); }
    
    bool operator!() const { return !has_value(); }
    
    auto begin() const {
      return std::vector<u8>::begin();
    }

    auto end() const {
      return std::vector<u8>::end();
    }
  };

  using Headers = std::map<std::string, std::optional<std::string>>;
  enum class AllowedReturnCodes
  {
    Ok_Only,  // Only return code 200
    All,      // Any return code
  };

  void SetCookies(const std::string& cookies);
  void UseIPv4();
  void FollowRedirects(long max = 1);
  std::string EscapeComponent(const std::string& string);
  s32 GetLastResponseCode() const;

  Response Get(const std::string& url, const Headers& headers = {},
              AllowedReturnCodes codes = AllowedReturnCodes::Ok_Only);
  Response Post(const std::string& url, const std::vector<u8>& payload,
               const Headers& headers = {}, AllowedReturnCodes codes = AllowedReturnCodes::Ok_Only);
  Response Post(const std::string& url, const std::string& payload,
               const Headers& headers = {}, AllowedReturnCodes codes = AllowedReturnCodes::Ok_Only);

private:
  class Impl;
  std::unique_ptr<Impl> m_impl;
};
}  // namespace Common
