# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_ALL_INSTALL_TYPES "Full;Developer;User")
SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_PRODUCTBUILD "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB;C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB-build")
SET(CPACK_CMAKE_GENERATOR "Visual Studio 14 2015 Win64")
SET(CPACK_COMPONENTS_ALL "libraries;headers;documents;configinstall")
SET(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "7Z;ZIP")
SET(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
SET(CPACK_INSTALLED_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB;/")
SET(CPACK_INSTALL_CMAKE_PROJECTS "")
SET(CPACK_INSTALL_PREFIX "C:/Program")
SET(CPACK_INSTALL_TYPE_FULL_DISPLAY_NAME "Everything")
SET(CPACK_MODULE_PATH "")
SET(CPACK_NSIS_CONTACT "help@hdfgroup.org")
SET(CPACK_NSIS_DISPLAY_NAME "ZLIB 1.2-0")
SET(CPACK_NSIS_DISPLAY_NAME_SET "TRUE")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
SET(CPACK_NSIS_MODIFY_PATH "ON")
SET(CPACK_NSIS_PACKAGE_NAME "ZLIB 1.2-0")
SET(CPACK_OUTPUT_CONFIG_FILE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB-build/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB/RELEASE_HDF.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "zlib Installation")
SET(CPACK_PACKAGE_FILE_NAME "ZLIB--Source")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "HDF_Group\\ZLIB\\")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "ZLIB- (Win64)")
SET(CPACK_PACKAGE_NAME "ZLIB")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "HDF_Group")
SET(CPACK_PACKAGE_VERSION "")
SET(CPACK_PACKAGE_VERSION_MAJOR "1.2")
SET(CPACK_PACKAGE_VERSION_MINOR "8")
SET(CPACK_PACKAGE_VERSION_PATCH "")
SET(CPACK_RESOURCE_FILE_LICENSE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB/README")
SET(CPACK_RESOURCE_FILE_README "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB/RELEASE_HDF.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/CMake/share/cmake-3.9/Templates/CPack.GenericWelcome.txt")
SET(CPACK_RPM_PACKAGE_SOURCES "ON")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "ON")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "7Z;ZIP")
SET(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
SET(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB;/")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB-build/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "ZLIB--Source")
SET(CPACK_SOURCE_RPM "")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
SET(CPACK_SOURCE_TXZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "ON")
SET(CPACK_STRIP_FILES "")
SET(CPACK_SYSTEM_NAME "win64")
SET(CPACK_TOPLEVEL_TAG "win64-Source")
SET(CPACK_WIX_ROOT "")
SET(CPACK_WIX_SIZEOF_VOID_P "8")
SET(CPACK_WIX_UNINSTALL "1")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/oss/third_party/matio/CMake-hdf5-1.10.1/build/ZLIB-prefix/src/ZLIB-build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()