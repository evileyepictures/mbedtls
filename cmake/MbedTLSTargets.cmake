# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.20)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget MbedTLS::mbedcrypto MbedTLS::mbedx509 MbedTLS::mbedtls)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target MbedTLS::mbedcrypto
add_library(MbedTLS::mbedcrypto STATIC IMPORTED)

set_target_properties(MbedTLS::mbedcrypto PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ubuntu/fsp-net/thirdparty/mbedtls/include/"
)

# Create imported target MbedTLS::mbedx509
add_library(MbedTLS::mbedx509 STATIC IMPORTED)

set_target_properties(MbedTLS::mbedx509 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ubuntu/fsp-net/thirdparty/mbedtls/include/"
  INTERFACE_LINK_LIBRARIES "MbedTLS::mbedcrypto"
)

# Create imported target MbedTLS::mbedtls
add_library(MbedTLS::mbedtls STATIC IMPORTED)

set_target_properties(MbedTLS::mbedtls PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ubuntu/fsp-net/thirdparty/mbedtls/include/"
  INTERFACE_LINK_LIBRARIES "MbedTLS::mbedx509"
)

# Import target "MbedTLS::mbedcrypto" for configuration "RelWithDebInfo"
set_property(TARGET MbedTLS::mbedcrypto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(MbedTLS::mbedcrypto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "/home/ubuntu/fsp-net/thirdparty/mbedtls/library/libmbedcrypto.a"
  )

# Import target "MbedTLS::mbedx509" for configuration "RelWithDebInfo"
set_property(TARGET MbedTLS::mbedx509 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(MbedTLS::mbedx509 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "/home/ubuntu/fsp-net/thirdparty/mbedtls/library/libmbedx509.a"
  )

# Import target "MbedTLS::mbedtls" for configuration "RelWithDebInfo"
set_property(TARGET MbedTLS::mbedtls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(MbedTLS::mbedtls PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "/home/ubuntu/fsp-net/thirdparty/mbedtls/library/libmbedtls.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
