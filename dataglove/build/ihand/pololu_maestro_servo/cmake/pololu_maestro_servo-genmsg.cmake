# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pololu_maestro_servo: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipololu_maestro_servo:/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pololu_maestro_servo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_custom_target(_pololu_maestro_servo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pololu_maestro_servo" "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pololu_maestro_servo
  "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pololu_maestro_servo
)

### Generating Services

### Generating Module File
_generate_module_cpp(pololu_maestro_servo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pololu_maestro_servo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pololu_maestro_servo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pololu_maestro_servo_generate_messages pololu_maestro_servo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_dependencies(pololu_maestro_servo_generate_messages_cpp _pololu_maestro_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pololu_maestro_servo_gencpp)
add_dependencies(pololu_maestro_servo_gencpp pololu_maestro_servo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pololu_maestro_servo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pololu_maestro_servo
  "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pololu_maestro_servo
)

### Generating Services

### Generating Module File
_generate_module_eus(pololu_maestro_servo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pololu_maestro_servo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pololu_maestro_servo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pololu_maestro_servo_generate_messages pololu_maestro_servo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_dependencies(pololu_maestro_servo_generate_messages_eus _pololu_maestro_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pololu_maestro_servo_geneus)
add_dependencies(pololu_maestro_servo_geneus pololu_maestro_servo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pololu_maestro_servo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pololu_maestro_servo
  "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pololu_maestro_servo
)

### Generating Services

### Generating Module File
_generate_module_lisp(pololu_maestro_servo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pololu_maestro_servo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pololu_maestro_servo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pololu_maestro_servo_generate_messages pololu_maestro_servo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_dependencies(pololu_maestro_servo_generate_messages_lisp _pololu_maestro_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pololu_maestro_servo_genlisp)
add_dependencies(pololu_maestro_servo_genlisp pololu_maestro_servo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pololu_maestro_servo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pololu_maestro_servo
  "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pololu_maestro_servo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pololu_maestro_servo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pololu_maestro_servo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pololu_maestro_servo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pololu_maestro_servo_generate_messages pololu_maestro_servo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_dependencies(pololu_maestro_servo_generate_messages_nodejs _pololu_maestro_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pololu_maestro_servo_gennodejs)
add_dependencies(pololu_maestro_servo_gennodejs pololu_maestro_servo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pololu_maestro_servo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pololu_maestro_servo
  "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pololu_maestro_servo
)

### Generating Services

### Generating Module File
_generate_module_py(pololu_maestro_servo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pololu_maestro_servo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pololu_maestro_servo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pololu_maestro_servo_generate_messages pololu_maestro_servo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabadabadoo/workspace/dataglove/src/ihand/pololu_maestro_servo/msg/pololu_maestro_servo_msg.msg" NAME_WE)
add_dependencies(pololu_maestro_servo_generate_messages_py _pololu_maestro_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pololu_maestro_servo_genpy)
add_dependencies(pololu_maestro_servo_genpy pololu_maestro_servo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pololu_maestro_servo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pololu_maestro_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pololu_maestro_servo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pololu_maestro_servo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pololu_maestro_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pololu_maestro_servo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pololu_maestro_servo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pololu_maestro_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pololu_maestro_servo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pololu_maestro_servo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pololu_maestro_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pololu_maestro_servo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pololu_maestro_servo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pololu_maestro_servo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pololu_maestro_servo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pololu_maestro_servo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pololu_maestro_servo_generate_messages_py std_msgs_generate_messages_py)
endif()
