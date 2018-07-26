# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget hdf5::hdf5-static hdf5::hdf5_tools-static hdf5::hdf5_hl-static hdf5::hdf5_cpp-static hdf5::hdf5_hl_cpp-static hdf5::h5diff hdf5::h5ls hdf5::h5debug hdf5::h5repart hdf5::h5mkgrp hdf5::h5clear hdf5::h5import hdf5::h5repack hdf5::h5jam hdf5::h5unjam hdf5::h5copy hdf5::h5stat hdf5::h5dump hdf5::h5format_convert hdf5::gif2h5 hdf5::h52gif)
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


# Create imported target hdf5::hdf5-static
add_library(hdf5::hdf5-static STATIC IMPORTED)

set_target_properties(hdf5::hdf5-static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/src;C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/src"
  INTERFACE_LINK_LIBRARIES "zlib-static;szip-static"
)

# Create imported target hdf5::hdf5_tools-static
add_library(hdf5::hdf5_tools-static STATIC IMPORTED)

set_target_properties(hdf5::hdf5_tools-static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/tools/lib;C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib"
  INTERFACE_LINK_LIBRARIES "hdf5::hdf5-static"
)

# Create imported target hdf5::hdf5_hl-static
add_library(hdf5::hdf5_hl-static STATIC IMPORTED)

set_target_properties(hdf5::hdf5_hl-static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/hl/src;C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/hl/src"
  INTERFACE_LINK_LIBRARIES "hdf5::hdf5-static"
)

# Create imported target hdf5::hdf5_cpp-static
add_library(hdf5::hdf5_cpp-static STATIC IMPORTED)

set_target_properties(hdf5::hdf5_cpp-static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/c++/src;C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/c++/src"
  INTERFACE_LINK_LIBRARIES "hdf5::hdf5-static"
)

# Create imported target hdf5::hdf5_hl_cpp-static
add_library(hdf5::hdf5_hl_cpp-static STATIC IMPORTED)

set_target_properties(hdf5::hdf5_hl_cpp-static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/hl/c++/src;C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/hl/c++/src"
  INTERFACE_LINK_LIBRARIES "hdf5::hdf5_hl-static;hdf5::hdf5-static"
)

# Create imported target hdf5::h5diff
add_executable(hdf5::h5diff IMPORTED)

# Create imported target hdf5::h5ls
add_executable(hdf5::h5ls IMPORTED)

# Create imported target hdf5::h5debug
add_executable(hdf5::h5debug IMPORTED)

# Create imported target hdf5::h5repart
add_executable(hdf5::h5repart IMPORTED)

# Create imported target hdf5::h5mkgrp
add_executable(hdf5::h5mkgrp IMPORTED)

# Create imported target hdf5::h5clear
add_executable(hdf5::h5clear IMPORTED)

# Create imported target hdf5::h5import
add_executable(hdf5::h5import IMPORTED)

# Create imported target hdf5::h5repack
add_executable(hdf5::h5repack IMPORTED)

# Create imported target hdf5::h5jam
add_executable(hdf5::h5jam IMPORTED)

# Create imported target hdf5::h5unjam
add_executable(hdf5::h5unjam IMPORTED)

# Create imported target hdf5::h5copy
add_executable(hdf5::h5copy IMPORTED)

# Create imported target hdf5::h5stat
add_executable(hdf5::h5stat IMPORTED)

# Create imported target hdf5::h5dump
add_executable(hdf5::h5dump IMPORTED)

# Create imported target hdf5::h5format_convert
add_executable(hdf5::h5format_convert IMPORTED)

# Create imported target hdf5::gif2h5
add_executable(hdf5::gif2h5 IMPORTED)

# Create imported target hdf5::h52gif
add_executable(hdf5::h52gif IMPORTED)

# Import target "hdf5::hdf5-static" for configuration "Debug"
set_property(TARGET hdf5::hdf5-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::hdf5-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_D.lib"
  )

# Import target "hdf5::hdf5_tools-static" for configuration "Debug"
set_property(TARGET hdf5::hdf5_tools-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::hdf5_tools-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_tools_D.lib"
  )

# Import target "hdf5::hdf5_hl-static" for configuration "Debug"
set_property(TARGET hdf5::hdf5_hl-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::hdf5_hl-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_hl_D.lib"
  )

# Import target "hdf5::hdf5_cpp-static" for configuration "Debug"
set_property(TARGET hdf5::hdf5_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::hdf5_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_cpp_D.lib"
  )

# Import target "hdf5::hdf5_hl_cpp-static" for configuration "Debug"
set_property(TARGET hdf5::hdf5_hl_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::hdf5_hl_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_hl_cpp_D.lib"
  )

# Import target "hdf5::h5diff" for configuration "Debug"
set_property(TARGET hdf5::h5diff APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5diff PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5diff.exe"
  )

# Import target "hdf5::h5ls" for configuration "Debug"
set_property(TARGET hdf5::h5ls APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5ls PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5ls.exe"
  )

# Import target "hdf5::h5debug" for configuration "Debug"
set_property(TARGET hdf5::h5debug APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5debug PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5debug.exe"
  )

# Import target "hdf5::h5repart" for configuration "Debug"
set_property(TARGET hdf5::h5repart APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5repart PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5repart.exe"
  )

# Import target "hdf5::h5mkgrp" for configuration "Debug"
set_property(TARGET hdf5::h5mkgrp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5mkgrp PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5mkgrp.exe"
  )

# Import target "hdf5::h5clear" for configuration "Debug"
set_property(TARGET hdf5::h5clear APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5clear PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5clear.exe"
  )

# Import target "hdf5::h5import" for configuration "Debug"
set_property(TARGET hdf5::h5import APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5import PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5import.exe"
  )

# Import target "hdf5::h5repack" for configuration "Debug"
set_property(TARGET hdf5::h5repack APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5repack PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5repack.exe"
  )

# Import target "hdf5::h5jam" for configuration "Debug"
set_property(TARGET hdf5::h5jam APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5jam PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5jam.exe"
  )

# Import target "hdf5::h5unjam" for configuration "Debug"
set_property(TARGET hdf5::h5unjam APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5unjam PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5unjam.exe"
  )

# Import target "hdf5::h5copy" for configuration "Debug"
set_property(TARGET hdf5::h5copy APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5copy PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5copy.exe"
  )

# Import target "hdf5::h5stat" for configuration "Debug"
set_property(TARGET hdf5::h5stat APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5stat PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5stat.exe"
  )

# Import target "hdf5::h5dump" for configuration "Debug"
set_property(TARGET hdf5::h5dump APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5dump PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5dump.exe"
  )

# Import target "hdf5::h5format_convert" for configuration "Debug"
set_property(TARGET hdf5::h5format_convert APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h5format_convert PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h5format_convert.exe"
  )

# Import target "hdf5::gif2h5" for configuration "Debug"
set_property(TARGET hdf5::gif2h5 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::gif2h5 PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/gif2h5.exe"
  )

# Import target "hdf5::h52gif" for configuration "Debug"
set_property(TARGET hdf5::h52gif APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf5::h52gif PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/h52gif.exe"
  )

# Import target "hdf5::hdf5-static" for configuration "Release"
set_property(TARGET hdf5::hdf5-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::hdf5-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5.lib"
  )

# Import target "hdf5::hdf5_tools-static" for configuration "Release"
set_property(TARGET hdf5::hdf5_tools-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::hdf5_tools-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5_tools.lib"
  )

# Import target "hdf5::hdf5_hl-static" for configuration "Release"
set_property(TARGET hdf5::hdf5_hl-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::hdf5_hl-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5_hl.lib"
  )

# Import target "hdf5::hdf5_cpp-static" for configuration "Release"
set_property(TARGET hdf5::hdf5_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::hdf5_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5_cpp.lib"
  )

# Import target "hdf5::hdf5_hl_cpp-static" for configuration "Release"
set_property(TARGET hdf5::hdf5_hl_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::hdf5_hl_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5_hl_cpp.lib"
  )

# Import target "hdf5::h5diff" for configuration "Release"
set_property(TARGET hdf5::h5diff APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5diff PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5diff.exe"
  )

# Import target "hdf5::h5ls" for configuration "Release"
set_property(TARGET hdf5::h5ls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5ls PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5ls.exe"
  )

# Import target "hdf5::h5debug" for configuration "Release"
set_property(TARGET hdf5::h5debug APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5debug PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5debug.exe"
  )

# Import target "hdf5::h5repart" for configuration "Release"
set_property(TARGET hdf5::h5repart APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5repart PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5repart.exe"
  )

# Import target "hdf5::h5mkgrp" for configuration "Release"
set_property(TARGET hdf5::h5mkgrp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5mkgrp PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5mkgrp.exe"
  )

# Import target "hdf5::h5clear" for configuration "Release"
set_property(TARGET hdf5::h5clear APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5clear PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5clear.exe"
  )

# Import target "hdf5::h5import" for configuration "Release"
set_property(TARGET hdf5::h5import APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5import PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5import.exe"
  )

# Import target "hdf5::h5repack" for configuration "Release"
set_property(TARGET hdf5::h5repack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5repack PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5repack.exe"
  )

# Import target "hdf5::h5jam" for configuration "Release"
set_property(TARGET hdf5::h5jam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5jam PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5jam.exe"
  )

# Import target "hdf5::h5unjam" for configuration "Release"
set_property(TARGET hdf5::h5unjam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5unjam PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5unjam.exe"
  )

# Import target "hdf5::h5copy" for configuration "Release"
set_property(TARGET hdf5::h5copy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5copy PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5copy.exe"
  )

# Import target "hdf5::h5stat" for configuration "Release"
set_property(TARGET hdf5::h5stat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5stat PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5stat.exe"
  )

# Import target "hdf5::h5dump" for configuration "Release"
set_property(TARGET hdf5::h5dump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5dump PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5dump.exe"
  )

# Import target "hdf5::h5format_convert" for configuration "Release"
set_property(TARGET hdf5::h5format_convert APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h5format_convert PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h5format_convert.exe"
  )

# Import target "hdf5::gif2h5" for configuration "Release"
set_property(TARGET hdf5::gif2h5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::gif2h5 PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/gif2h5.exe"
  )

# Import target "hdf5::h52gif" for configuration "Release"
set_property(TARGET hdf5::h52gif APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf5::h52gif PROPERTIES
  IMPORTED_LOCATION_RELEASE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/h52gif.exe"
  )

# Import target "hdf5::hdf5-static" for configuration "MinSizeRel"
set_property(TARGET hdf5::hdf5-static APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::hdf5-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "C"
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5.lib"
  )

# Import target "hdf5::hdf5_tools-static" for configuration "MinSizeRel"
set_property(TARGET hdf5::hdf5_tools-static APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::hdf5_tools-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "C"
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5_tools.lib"
  )

# Import target "hdf5::hdf5_hl-static" for configuration "MinSizeRel"
set_property(TARGET hdf5::hdf5_hl-static APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::hdf5_hl-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "C"
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5_hl.lib"
  )

# Import target "hdf5::hdf5_cpp-static" for configuration "MinSizeRel"
set_property(TARGET hdf5::hdf5_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::hdf5_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5_cpp.lib"
  )

# Import target "hdf5::hdf5_hl_cpp-static" for configuration "MinSizeRel"
set_property(TARGET hdf5::hdf5_hl_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::hdf5_hl_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5_hl_cpp.lib"
  )

# Import target "hdf5::h5diff" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5diff APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5diff PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5diff.exe"
  )

# Import target "hdf5::h5ls" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5ls APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5ls PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5ls.exe"
  )

# Import target "hdf5::h5debug" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5debug APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5debug PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5debug.exe"
  )

# Import target "hdf5::h5repart" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5repart APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5repart PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5repart.exe"
  )

# Import target "hdf5::h5mkgrp" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5mkgrp APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5mkgrp PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5mkgrp.exe"
  )

# Import target "hdf5::h5clear" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5clear APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5clear PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5clear.exe"
  )

# Import target "hdf5::h5import" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5import APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5import PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5import.exe"
  )

# Import target "hdf5::h5repack" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5repack APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5repack PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5repack.exe"
  )

# Import target "hdf5::h5jam" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5jam APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5jam PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5jam.exe"
  )

# Import target "hdf5::h5unjam" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5unjam APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5unjam PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5unjam.exe"
  )

# Import target "hdf5::h5copy" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5copy APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5copy PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5copy.exe"
  )

# Import target "hdf5::h5stat" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5stat APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5stat PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5stat.exe"
  )

# Import target "hdf5::h5dump" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5dump APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5dump PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5dump.exe"
  )

# Import target "hdf5::h5format_convert" for configuration "MinSizeRel"
set_property(TARGET hdf5::h5format_convert APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h5format_convert PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h5format_convert.exe"
  )

# Import target "hdf5::gif2h5" for configuration "MinSizeRel"
set_property(TARGET hdf5::gif2h5 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::gif2h5 PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/gif2h5.exe"
  )

# Import target "hdf5::h52gif" for configuration "MinSizeRel"
set_property(TARGET hdf5::h52gif APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf5::h52gif PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/h52gif.exe"
  )

# Import target "hdf5::hdf5-static" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::hdf5-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::hdf5-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5.lib"
  )

# Import target "hdf5::hdf5_tools-static" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::hdf5_tools-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::hdf5_tools-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_tools.lib"
  )

# Import target "hdf5::hdf5_hl-static" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::hdf5_hl-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::hdf5_hl-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_hl.lib"
  )

# Import target "hdf5::hdf5_cpp-static" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::hdf5_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::hdf5_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_cpp.lib"
  )

# Import target "hdf5::hdf5_hl_cpp-static" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::hdf5_hl_cpp-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::hdf5_hl_cpp-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_hl_cpp.lib"
  )

# Import target "hdf5::h5diff" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5diff APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5diff PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5diff.exe"
  )

# Import target "hdf5::h5ls" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5ls APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5ls PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5ls.exe"
  )

# Import target "hdf5::h5debug" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5debug APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5debug PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5debug.exe"
  )

# Import target "hdf5::h5repart" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5repart APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5repart PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5repart.exe"
  )

# Import target "hdf5::h5mkgrp" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5mkgrp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5mkgrp PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5mkgrp.exe"
  )

# Import target "hdf5::h5clear" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5clear APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5clear PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5clear.exe"
  )

# Import target "hdf5::h5import" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5import APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5import PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5import.exe"
  )

# Import target "hdf5::h5repack" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5repack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5repack PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5repack.exe"
  )

# Import target "hdf5::h5jam" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5jam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5jam PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5jam.exe"
  )

# Import target "hdf5::h5unjam" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5unjam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5unjam PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5unjam.exe"
  )

# Import target "hdf5::h5copy" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5copy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5copy PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5copy.exe"
  )

# Import target "hdf5::h5stat" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5stat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5stat PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5stat.exe"
  )

# Import target "hdf5::h5dump" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5dump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5dump PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5dump.exe"
  )

# Import target "hdf5::h5format_convert" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h5format_convert APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h5format_convert PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h5format_convert.exe"
  )

# Import target "hdf5::gif2h5" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::gif2h5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::gif2h5 PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/gif2h5.exe"
  )

# Import target "hdf5::h52gif" for configuration "RelWithDebInfo"
set_property(TARGET hdf5::h52gif APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf5::h52gif PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/h52gif.exe"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
