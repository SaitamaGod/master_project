# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dyret_common: 7 messages, 1 services")

set(MSG_I_FLAGS "-Idyret_common:/home/saitama/catkin_ws/src/dyret_common/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dyret_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" ""
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" "dyret_common/PrismaticState:dyret_common/RevoluteState:std_msgs/Header"
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" "dyret_common/PrismaticConfig:dyret_common/RevoluteConfig:std_msgs/Header"
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" ""
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" "dyret_common/PrismaticConfig:dyret_common/Configuration:dyret_common/RevoluteConfig:std_msgs/Header"
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" ""
)

get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_custom_target(_dyret_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dyret_common" "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)
_generate_msg_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)

### Generating Services
_generate_srv_cpp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
)

### Generating Module File
_generate_module_cpp(dyret_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dyret_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dyret_common_generate_messages dyret_common_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_cpp _dyret_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_common_gencpp)
add_dependencies(dyret_common_gencpp dyret_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)
_generate_msg_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)

### Generating Services
_generate_srv_eus(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
)

### Generating Module File
_generate_module_eus(dyret_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dyret_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dyret_common_generate_messages dyret_common_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_eus _dyret_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_common_geneus)
add_dependencies(dyret_common_geneus dyret_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)
_generate_msg_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)

### Generating Services
_generate_srv_lisp(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
)

### Generating Module File
_generate_module_lisp(dyret_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dyret_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dyret_common_generate_messages dyret_common_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_lisp _dyret_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_common_genlisp)
add_dependencies(dyret_common_genlisp dyret_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)
_generate_msg_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)

### Generating Services
_generate_srv_nodejs(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
)

### Generating Module File
_generate_module_nodejs(dyret_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dyret_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dyret_common_generate_messages dyret_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_nodejs _dyret_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_common_gennodejs)
add_dependencies(dyret_common_gennodejs dyret_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)
_generate_msg_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)

### Generating Services
_generate_srv_py(dyret_common
  "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv"
  "${MSG_I_FLAGS}"
  "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg;/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg;/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
)

### Generating Module File
_generate_module_py(dyret_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dyret_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dyret_common_generate_messages dyret_common_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/State.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Pose.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/Configuration.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/srv/Configure.srv" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/RevoluteConfig.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/saitama/catkin_ws/src/dyret_common/msg/PrismaticState.msg" NAME_WE)
add_dependencies(dyret_common_generate_messages_py _dyret_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dyret_common_genpy)
add_dependencies(dyret_common_genpy dyret_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dyret_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dyret_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dyret_common_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dyret_common_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dyret_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dyret_common_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dyret_common_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dyret_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dyret_common_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dyret_common_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dyret_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dyret_common_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dyret_common_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dyret_common
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dyret_common_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dyret_common_generate_messages_py geometry_msgs_generate_messages_py)
endif()
