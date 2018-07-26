# Install script for directory: C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "toolsheaders" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5trav.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5tools.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5tools_dump.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5tools_utils.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5tools_str.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5tools_ref.h"
    "C:/oss/third_party/matio/CMake-hdf5-1.10.1/hdf5-1.10.1/tools/lib/h5diff.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "toolslibraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_tools.pdb")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "toolslibraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Debug/libhdf5_tools_D.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/Release/libhdf5_tools.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/MinSizeRel/libhdf5_tools.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/bin/RelWithDebInfo/libhdf5_tools.lib")
  endif()
endif()

