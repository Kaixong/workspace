cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg sensor_msgs cv_bridge image_transport)

## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

## pushForward.cpp & hitten.cpp
#add_executable(pushForward src/pushForward.cpp)
#target_link_libraries(pushForward ${catkin_LIBRARIES})
#add_dependencies(pushForward beginner_tutorials_generate_messages_cpp)

#add_executable(hitten src/hitten.cpp)
#target_link_libraries(hitten ${catkin_LIBRARIES})
#add_dependencies(hitten beginner_tutorials_generate_messages_cpp)

## BumpBump.cpp
#add_executable(BumpBump src/BumpBump.cpp)
#target_link_libraries(BumpBump ${catkin_LIBRARIES})
#add_dependencies(BumpBump beginner_tutorials_generate_messages_cpp)

## image_converter.cpp
add_executable(listener listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
add_dependencies(listener)

## talker.cpp & listener.cpp
#add_executable(talker src/talker.cpp)
#target_link_libraries(talker ${catkin_LIBRARIES})
#add_dependencies(talker beginner_tutorials_generate_messages_cpp)

#add_executable(listener src/listener.cpp)
#target_link_libraries(listener ${catkin_LIBRARIES})
#add_dependencies(listener beginner_tutorials_generate_messages_cpp)

## add_two_ints_server.cpp & client.cpp
#add_executable(add_two_ints_server src/add_two_ints_server.cpp)
#target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})
#add_dependencies(add_two_ints_server beginner_tutorials_gencpp)

#add_executable(add_two_ints_client src/add_two_ints_client.cpp)
#target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})
#add_dependencies(add_two_ints_client beginner_tutorials_gencpp)
