# Install script for directory: /home/ghlee/INNO-RTFDocs/eos/libraries/yubihsm/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ghlee/opt/eosio")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ghlee/opt/eosio/lib/libyubihsm.so.2.0.0;/home/ghlee/opt/eosio/lib/libyubihsm.so.2;/home/ghlee/opt/eosio/lib/libyubihsm.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ghlee/opt/eosio/lib" TYPE SHARED_LIBRARY FILES
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm.so.2.0.0"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm.so.2"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/ghlee/INNO-RTFDocs/eos/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2.0.0;/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2;/home/ghlee/opt/eosio/lib/libyubihsm_usb.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ghlee/opt/eosio/lib" TYPE SHARED_LIBRARY FILES
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_usb.so.2.0.0"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_usb.so.2"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_usb.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_usb.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2.0.0;/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2;/home/ghlee/opt/eosio/lib/libyubihsm_http.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ghlee/opt/eosio/lib" TYPE SHARED_LIBRARY FILES
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_http.so.2.0.0"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_http.so.2"
    "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/libyubihsm_http.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2.0.0"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so.2"
      "$ENV{DESTDIR}/home/ghlee/opt/eosio/lib/libyubihsm_http.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ghlee/opt/eosio/include/yubihsm.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ghlee/opt/eosio/include" TYPE FILE FILES "/home/ghlee/INNO-RTFDocs/eos/libraries/yubihsm/lib/yubihsm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ghlee/opt/eosio/share/pkgconfig/yubihsm.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ghlee/opt/eosio/share/pkgconfig" TYPE FILE FILES "/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/yubihsm.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ghlee/INNO-RTFDocs/eos/build/libraries/yubihsm/lib/tests/cmake_install.cmake")

endif()

