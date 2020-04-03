# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dyret_hardware: 2 messages, 0 services")

set(MSG_I_FLAGS "-Idyret_hardware:/home/saitama/catkin_ws/src/dyret_hardware/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dyret_hardware_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_custom_target(_dyret_hardware_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_hardware" "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" ""
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_custom_target(_dyret_hardware_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_hardware" "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_hardware
)
_generate_msg_cpp(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_hardware
)

### Generating Services

### Generating Module File
_generate_module_cpp(dyret_hardware
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_hardware
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dyret_hardware_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dyret_hardware_generate_messages dyret_hardware_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_cpp _dyret_hardware_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_cpp _dyret_hardware_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_hardware_gencpp)
add_dependencies(dyret_hardware_gencpp dyret_hardware_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_hardware_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_hardware
)
_generate_msg_eus(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_hardware
)

### Generating Services

### Generating Module File
_generate_module_eus(dyret_hardware
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_hardware
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dyret_hardware_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dyret_hardware_generate_messages dyret_hardware_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_eus _dyret_hardware_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_eus _dyret_hardware_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_hardware_geneus)
add_dependencies(dyret_hardware_geneus dyret_hardware_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_hardware_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_hardware
)
_generate_msg_lisp(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_hardware
)

### Generating Services

### Generating Module File
_generate_module_lisp(dyret_hardware
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_hardware
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dyret_hardware_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dyret_hardware_generate_messages dyret_hardware_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_lisp _dyret_hardware_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_lisp _dyret_hardware_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_hardware_genlisp)
add_dependencies(dyret_hardware_genlisp dyret_hardware_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_hardware_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_hardware
)
_generate_msg_nodejs(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_hardware
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dyret_hardware
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_hardware
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dyret_hardware_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dyret_hardware_generate_messages dyret_hardware_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_nodejs _dyret_hardware_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_nodejs _dyret_hardware_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_hardware_gennodejs)
add_dependencies(dyret_hardware_gennodejs dyret_hardware_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_hardware_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware
)
_generate_msg_py(dyret_hardware
  "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware
)

### Generating Services

### Generating Module File
_generate_module_py(dyret_hardware
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dyret_hardware_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dyret_hardware_generate_messages dyret_hardware_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardCommand.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_py _dyret_hardware_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_hardware/msg/ActuatorBoardState.msg" NAME_WE)
add_dependencies(dyret_hardware_generate_messages_py _dyret_hardware_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_hardware_genpy)
add_dependencies(dyret_hardware_genpy dyret_hardware_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_hardware_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_hardware)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_hardware
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dyret_hardware_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_hardware)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_hardware
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dyret_hardware_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_hardware)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_hardware
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dyret_hardware_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_hardware)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_hardware
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dyret_hardware_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_hardware
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dyret_hardware_generate_messages_py std_msgs_generate_messages_py)
endif()
