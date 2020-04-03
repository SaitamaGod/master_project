cmake_minimum_required(VERSION 2.8.3)
project(custom_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  rosserial_arduino
  rosserial_python
  std_msgs
  message_generation)

## Generate messages in the 'msg' folder
    add_message_files(
    FILES
    valve_msg.msg
    servo_msg.msg
  )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
   generate_messages(
    DEPENDENCIES
    rosserial_msgs
    std_msgs
  )

catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES custom_msgs
   CATKIN_DEPENDS message_runtime roscpp rospy rosserial_arduino rosserial_python std_msgs
#  DEPENDS system_lib
)

include_directories(
  SYSTEM
  include/dynamixel_sdk
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/custom_msgs.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
# add_executable(${PROJECT_NAME}_node src/custom_msgs_node.cpp)

  add_executable(talker src/ros_to_arduino_publisher.cpp)

  add_executable( dynamixel_read src/dynamixel_read.cpp
  src/dynamixel_sdk/packet_handler.cpp
  src/dynamixel_sdk/protocol1_packet_handler.cpp
  src/dynamixel_sdk/protocol2_packet_handler.cpp
  src/dynamixel_sdk/group_sync_read.cpp
  src/dynamixel_sdk/group_sync_write.cpp
  src/dynamixel_sdk/group_bulk_read.cpp
  src/dynamixel_sdk/group_bulk_write.cpp
  src/dynamixel_sdk/port_handler.cpp
  src/dynamixel_sdk/port_handler_linux.cpp)


## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
  add_dependencies(talker custom_msgs_generate_messages_cpp)

## Specify libraries to link a library or executable target against
 target_link_libraries(talker ${catkin_LIBRARIES})
 add_dependencies(talker custom_msgs_generate_messages_cpp)

 target_link_libraries(dynamixel_read ${catkin_LIBRARIES})
 add_dependencies(dynamixel_read custom_msgs_generate_messages_cpp)
