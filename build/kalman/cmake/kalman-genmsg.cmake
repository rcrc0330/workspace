# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kalman: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ikalman:/home/rajat/rajat_ws/src/kalman/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kalman_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_custom_target(_kalman_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kalman" "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" "kalman/vector9:std_msgs/Header"
)

get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_custom_target(_kalman_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kalman" "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg"
  "${MSG_I_FLAGS}"
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman
)
_generate_msg_cpp(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman
)

### Generating Services

### Generating Module File
_generate_module_cpp(kalman
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kalman_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kalman_generate_messages kalman_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_dependencies(kalman_generate_messages_cpp _kalman_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_dependencies(kalman_generate_messages_cpp _kalman_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_gencpp)
add_dependencies(kalman_gencpp kalman_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg"
  "${MSG_I_FLAGS}"
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman
)
_generate_msg_eus(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman
)

### Generating Services

### Generating Module File
_generate_module_eus(kalman
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kalman_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kalman_generate_messages kalman_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_dependencies(kalman_generate_messages_eus _kalman_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_dependencies(kalman_generate_messages_eus _kalman_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_geneus)
add_dependencies(kalman_geneus kalman_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg"
  "${MSG_I_FLAGS}"
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman
)
_generate_msg_lisp(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman
)

### Generating Services

### Generating Module File
_generate_module_lisp(kalman
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kalman_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kalman_generate_messages kalman_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_dependencies(kalman_generate_messages_lisp _kalman_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_dependencies(kalman_generate_messages_lisp _kalman_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_genlisp)
add_dependencies(kalman_genlisp kalman_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg"
  "${MSG_I_FLAGS}"
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman
)
_generate_msg_nodejs(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kalman
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kalman_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kalman_generate_messages kalman_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_dependencies(kalman_generate_messages_nodejs _kalman_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_dependencies(kalman_generate_messages_nodejs _kalman_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_gennodejs)
add_dependencies(kalman_gennodejs kalman_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg"
  "${MSG_I_FLAGS}"
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman
)
_generate_msg_py(kalman
  "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman
)

### Generating Services

### Generating Module File
_generate_module_py(kalman
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kalman_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kalman_generate_messages kalman_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/matrix6.msg" NAME_WE)
add_dependencies(kalman_generate_messages_py _kalman_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajat/rajat_ws/src/kalman/msg/vector9.msg" NAME_WE)
add_dependencies(kalman_generate_messages_py _kalman_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_genpy)
add_dependencies(kalman_genpy kalman_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kalman_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kalman_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kalman_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kalman_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kalman_generate_messages_py std_msgs_generate_messages_py)
endif()
