#include "Common/DynamicLibrary.h"
#include <fmt/format.h>

#if defined(_WIN32)
#include <windows.h>
#elif defined(__APPLE__) || defined(__ANDROID__) || (defined(__unix__) && !defined(__SWITCH__))
#include <dlfcn.h>
#endif
namespace Common
{
  static std::string GetLibraryFilename(const std::string& libname)
{
#if defined(_WIN32)
  return libname + ".dll";
#elif defined(__APPLE__)
  return "lib" + libname + ".dylib";
#else
  return "lib" + libname + ".so";
#endif
}


bool DynamicLibrary::Open(const char* filename)
{
#if defined(_WIN32)
  m_handle = reinterpret_cast<void*>(LoadLibraryA(filename));
#elif defined(__APPLE__) || defined(__ANDROID__) || (defined(__unix__) && !defined(__SWITCH__))
  m_handle = dlopen(filename, RTLD_NOW);
#elif defined(__SWITCH__)
  // Switch: dynamic libraries are not supported, always fail
  m_handle = nullptr;
#else
  m_handle = nullptr;
#endif
  return m_handle != nullptr;
}

void DynamicLibrary::Close()
{
  if (!IsOpen())
    return;

#if defined(_WIN32)
  FreeLibrary(reinterpret_cast<HMODULE>(m_handle));
#elif defined(__APPLE__) || defined(__ANDROID__) || (defined(__unix__) && !defined(__SWITCH__))
  dlclose(m_handle);
#elif defined(__SWITCH__)
  // Nothing to do
#else
  // Nothing to do
#endif
  m_handle = nullptr;
}

void* DynamicLibrary::GetSymbolAddress(const char* name) const
{
#if defined(_WIN32)
  return reinterpret_cast<void*>(GetProcAddress(reinterpret_cast<HMODULE>(m_handle), name));
#elif defined(__APPLE__) || defined(__ANDROID__) || (defined(__unix__) && !defined(__SWITCH__))
  return reinterpret_cast<void*>(dlsym(m_handle, name));
#elif defined(__SWITCH__)
  // Switch: no dynamic symbols
  return nullptr;
#else
  return nullptr;
#endif
}


}