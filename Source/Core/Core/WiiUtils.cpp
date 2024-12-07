#include "Core/WiiUtils.h"

#include <algorithm>
#include <memory>
#include <string>
#include <vector>

#include "Common/CommonTypes.h"
#include "Common/Logging/Log.h"
#include "Core/IOS/ES/Formats.h"
#include "Core/IOS/IOS.h"

namespace WiiUtils
{

bool InstallWAD(const std::string& wad_path)
{
  return false;  // Stub implementation for Switch
}

bool UninstallTitle(u64 title_id)
{
  return false;  // Stub implementation for Switch
}

bool IsTitleInstalled(u64 title_id)
{
  return false;  // Stub implementation for Switch
}

UpdateResult DoDiscUpdate(UpdateCallback update_callback, const std::string& image_path)
{
  return UpdateResult::ImportFailed;  // Stub implementation for Switch
}

NANDCheckResult CheckNAND(IOS::HLE::Kernel& ios)
{
  return NANDCheckResult{};  // Stub implementation for Switch
}

bool RepairNAND(IOS::HLE::Kernel& ios)
{
  return false;  // Stub implementation for Switch
}

std::shared_ptr<IOS::HLE::BluetoothEmuDevice> GetBluetoothEmuDevice()
{
  return nullptr;  // Stub implementation for Switch
}

std::shared_ptr<IOS::HLE::BluetoothRealDevice> GetBluetoothRealDevice()
{
  return nullptr;  // Stub implementation for Switch
}

}  // namespace WiiUtils
