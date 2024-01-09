# Install script for directory: /home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zeeco/OpenREALM/catkin_ws/install")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs/msg" TYPE FILE FILES
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/Frame.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/Georeference.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/GroundImageCompressed.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/Pinhole.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/CvGridMap.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/Depthmap.msg"
    "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/msg/PointCloud.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs/srv" TYPE FILE FILES "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/srv/ParameterChange.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs/cmake" TYPE FILE FILES "/home/zeeco/OpenREALM/catkin_ws/build/OpenREALM_ROS1_Bridge/realm_msgs/catkin_generated/installspace/realm_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zeeco/OpenREALM/catkin_ws/devel/include/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zeeco/OpenREALM/catkin_ws/devel/share/roseus/ros/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zeeco/OpenREALM/catkin_ws/devel/share/common-lisp/ros/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zeeco/OpenREALM/catkin_ws/devel/share/gennodejs/ros/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/zeeco/OpenREALM/catkin_ws/devel/lib/python3/dist-packages/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zeeco/OpenREALM/catkin_ws/devel/lib/python3/dist-packages/realm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zeeco/OpenREALM/catkin_ws/build/OpenREALM_ROS1_Bridge/realm_msgs/catkin_generated/installspace/realm_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs/cmake" TYPE FILE FILES "/home/zeeco/OpenREALM/catkin_ws/build/OpenREALM_ROS1_Bridge/realm_msgs/catkin_generated/installspace/realm_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs/cmake" TYPE FILE FILES
    "/home/zeeco/OpenREALM/catkin_ws/build/OpenREALM_ROS1_Bridge/realm_msgs/catkin_generated/installspace/realm_msgsConfig.cmake"
    "/home/zeeco/OpenREALM/catkin_ws/build/OpenREALM_ROS1_Bridge/realm_msgs/catkin_generated/installspace/realm_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realm_msgs" TYPE FILE FILES "/home/zeeco/OpenREALM/catkin_ws/src/OpenREALM_ROS1_Bridge/realm_msgs/package.xml")
endif()

