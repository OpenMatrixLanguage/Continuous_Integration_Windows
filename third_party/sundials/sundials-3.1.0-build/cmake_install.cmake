# Install script for directory: C:/oss/third_party/sundials/sundials-3.1.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/oss/third_party/sundials/sundials-3.1.0-install")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES "C:/oss/third_party/sundials/sundials-3.1.0-build/include/sundials/sundials_config.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES "C:/oss/third_party/sundials/sundials-3.1.0-build/include/sundials/sundials_fconfig.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "C:/oss/third_party/sundials/sundials-3.1.0/LICENSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sundials/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/nvec_ser/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunmat_dense/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunmat_band/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunmat_sparse/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_band/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_dense/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_spgmr/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_spfgmr/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_spbcgs/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_sptfqmr/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/sunlinsol_pcg/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/arkode/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/cvode/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/cvodes/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/ida/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/idas/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/src/kinsol/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/arkode/C_serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/cvode/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/cvodes/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/ida/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/idas/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/kinsol/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/nvector/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunmatrix/dense/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunmatrix/band/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunmatrix/sparse/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/band/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/dense/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/spgmr/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/spfgmr/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/spbcgs/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/sptfqmr/serial/cmake_install.cmake")
  include("C:/oss/third_party/sundials/sundials-3.1.0-build/examples/sunlinsol/pcg/serial/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/oss/third_party/sundials/sundials-3.1.0-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
