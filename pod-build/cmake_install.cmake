# Install script for directory: /Users/pearl790131/apriltags

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Users/pearl790131/apriltags/build")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/pearl790131/apriltags/pod-build/lib/libapriltags.a")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
    EXECUTE_PROCESS(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/AprilTags" TYPE FILE FILES
    "/Users/pearl790131/apriltags/AprilTags/Edge.h"
    "/Users/pearl790131/apriltags/AprilTags/FloatImage.h"
    "/Users/pearl790131/apriltags/AprilTags/Gaussian.h"
    "/Users/pearl790131/apriltags/AprilTags/GLine2D.h"
    "/Users/pearl790131/apriltags/AprilTags/GLineSegment2D.h"
    "/Users/pearl790131/apriltags/AprilTags/GrayModel.h"
    "/Users/pearl790131/apriltags/AprilTags/Gridder.h"
    "/Users/pearl790131/apriltags/AprilTags/Homography33.h"
    "/Users/pearl790131/apriltags/AprilTags/MathUtil.h"
    "/Users/pearl790131/apriltags/AprilTags/pch.h"
    "/Users/pearl790131/apriltags/AprilTags/Quad.h"
    "/Users/pearl790131/apriltags/AprilTags/Segment.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag16h5.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag16h5_other.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag25h7.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag25h9.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag36h11.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag36h11_other.h"
    "/Users/pearl790131/apriltags/AprilTags/Tag36h9.h"
    "/Users/pearl790131/apriltags/AprilTags/TagDetection.h"
    "/Users/pearl790131/apriltags/AprilTags/TagDetector.h"
    "/Users/pearl790131/apriltags/AprilTags/TagFamily.h"
    "/Users/pearl790131/apriltags/AprilTags/UnionFindSimple.h"
    "/Users/pearl790131/apriltags/AprilTags/XYWeight.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/pearl790131/apriltags/pod-build/lib/pkgconfig/apriltags.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/pearl790131/apriltags/pod-build/example/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/pearl790131/apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/pearl790131/apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
