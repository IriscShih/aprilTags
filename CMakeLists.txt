cmake_minimum_required(VERSION 2.6)
project(apriltags)

#add_definitions(-pg) #"-fopenmp)

# pull in the pods macros. See cmake/pods.cmake for documentation
set(POD_NAME apriltags)
include(cmake/pods.cmake)


file(GLOB SOURCE "src/*.cc")
include_directories(AprilTags . /opt/local/include)
add_library(apriltags ${SOURCE})

file(GLOB STUPID "OpenIGTLink/Source/*.cxx")
include_directories(OpenIGTLink/Source . /opt/local/include)
include_directories(igtl . /include/igtl)
include_directories(igtl . /lib/igtl)
add_library(OpenIGTLink ${STUPID})

file(GLOB STUPID2 "OpenIGTLink/Source/igtlutil/*.c")
include_directories(OpenIGTLink/Source/igtlutil . /opt/local/include)
add_library(igtlutil ${STUPID2})

file(GLOB FG_SOURCE "epiphan/codec/avi_writer/*.c")
include_directories(epiphan/frmgrab/include . /opt/local/include)
include_directories(epiphan/include . /opt/local/include)
add_library(frmgrab ${FG_SOURCE})

find_package(OpenCV)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(apriltags ${OpenCV_LIBS}) #-pg) #-fopenmp)
pods_use_pkg_config_packages(apriltags eigen3)


if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  target_link_libraries(apriltags -L/opt/local/lib/) # MacPorts special treatment...
else (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  pods_use_pkg_config_packages(apriltags libv4l2)
endif (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

pods_install_libraries(apriltags)
pods_install_libraries(OpenIGTLink)


file(GLOB header_files "AprilTags/*.h")
pods_install_headers(${header_files} DESTINATION AprilTags/)

file(GLOB op_header "OpenIGTLink/Source/*.h")
pods_install_headers(${op_header} DESTINATION igtl/)

file(GLOB op_header2 "OpenIGTLink/Source/igtlutil/*.h")
pods_install_headers(${op_header} DESTINATION OpenIGTLink/Source/igtlutil/)

file(GLOB fg_header "epiphan/frmgrab/include/*.h")
pods_install_headers(${op_header} DESTINATION epiphan/frmgrab/include)

file(GLOB fg_header2 "epiphan/include/*.h")
pods_install_headers(${op_header} DESTINATION epiphan/include/)


pods_install_pkg_config_file(apriltags
    LIBS -lapriltags
    REQUIRES eigen3 opencv2 
    VERSION 1.0.0)


add_subdirectory(example)
