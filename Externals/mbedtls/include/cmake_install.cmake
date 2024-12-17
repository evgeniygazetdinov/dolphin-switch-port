# Install script for directory: /home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/devkitpro/portlibs/switch")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/devkitpro/devkitA64/bin/aarch64-none-elf-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/aes.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/aesni.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/arc4.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/aria.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/asn1.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/asn1write.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/base64.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/bignum.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/blowfish.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/bn_mul.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/camellia.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ccm.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/certs.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/chacha20.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/chachapoly.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/check_config.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/cipher.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/cmac.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/config.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/config_psa.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/constant_time.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/debug.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/des.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/dhm.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ecdh.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ecdsa.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ecjpake.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ecp.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/entropy.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/error.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/gcm.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/havege.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/hkdf.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/md.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/md2.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/md4.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/md5.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/md_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/net.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/net_sockets.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/nist_kw.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/oid.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/padlock.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pem.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pk.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pk_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pkcs11.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pkcs12.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/pkcs5.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/platform.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/platform_time.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/platform_util.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/poly1305.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/psa_util.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ripemd160.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/rsa.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/sha1.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/sha256.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/sha512.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/threading.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/timing.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/version.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/x509.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/x509_crl.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/x509_crt.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/x509_csr.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_compat.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_config.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_driver_common.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_extra.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_platform.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_se_driver.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_sizes.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_struct.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_types.h"
    "/home/ev/ClangProjects/dolphin-switch/Externals/mbedtls/include/psa/crypto_values.h"
    )
endif()

