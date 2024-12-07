#pragma once

#include <functional>
#include <memory>
#include <string>
#include <unordered_set>

#include "Common/CommonTypes.h"

namespace IOS::HLE
{
class BluetoothEmuDevice;
class BluetoothRealDevice;
class Kernel;
}  // namespace IOS::HLE

namespace WiiUtils
{
enum class UpdateResult
{
  Succeeded,
  AlreadyUpToDate,
  RegionMismatch,
  MissingUpdatePartition,
  DiscReadFailed,
  ImportFailed,
  Cancelled,
  NumberOfEntries,
};

struct NANDCheckResult
{
  bool bad = false;
  std::unordered_set<u64> titles_to_remove;
};

// Return false to cancel the update as soon as the current title has finished updating.
using UpdateCallback = std::function<bool(size_t processed, size_t total, u64 title_id)>;

bool InstallWAD(const std::string& wad_path);
bool UninstallTitle(u64 title_id);
bool IsTitleInstalled(u64 title_id);
UpdateResult DoDiscUpdate(UpdateCallback update_callback, const std::string& image_path);
NANDCheckResult CheckNAND(IOS::HLE::Kernel& ios);
bool RepairNAND(IOS::HLE::Kernel& ios);
std::shared_ptr<IOS::HLE::BluetoothEmuDevice> GetBluetoothEmuDevice();
std::shared_ptr<IOS::HLE::BluetoothRealDevice> GetBluetoothRealDevice();

}  // namespace WiiUtils
