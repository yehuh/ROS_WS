# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yehuh_mouse: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iyehuh_mouse:/home/ubuntu/catkin_ws/src/yehuh_mouse/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yehuh_mouse_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_custom_target(_yehuh_mouse_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yehuh_mouse" "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_custom_target(_yehuh_mouse_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yehuh_mouse" "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_custom_target(_yehuh_mouse_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yehuh_mouse" "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse
)
_generate_msg_cpp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse
)

### Generating Services
_generate_srv_cpp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse
)

### Generating Module File
_generate_module_cpp(yehuh_mouse
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yehuh_mouse_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yehuh_mouse_generate_messages yehuh_mouse_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_cpp _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_cpp _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_cpp _yehuh_mouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yehuh_mouse_gencpp)
add_dependencies(yehuh_mouse_gencpp yehuh_mouse_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yehuh_mouse_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse
)
_generate_msg_eus(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse
)

### Generating Services
_generate_srv_eus(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse
)

### Generating Module File
_generate_module_eus(yehuh_mouse
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yehuh_mouse_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yehuh_mouse_generate_messages yehuh_mouse_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_eus _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_eus _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_eus _yehuh_mouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yehuh_mouse_geneus)
add_dependencies(yehuh_mouse_geneus yehuh_mouse_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yehuh_mouse_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse
)
_generate_msg_lisp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse
)

### Generating Services
_generate_srv_lisp(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse
)

### Generating Module File
_generate_module_lisp(yehuh_mouse
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yehuh_mouse_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yehuh_mouse_generate_messages yehuh_mouse_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_lisp _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_lisp _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_lisp _yehuh_mouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yehuh_mouse_genlisp)
add_dependencies(yehuh_mouse_genlisp yehuh_mouse_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yehuh_mouse_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse
)
_generate_msg_nodejs(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse
)

### Generating Services
_generate_srv_nodejs(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse
)

### Generating Module File
_generate_module_nodejs(yehuh_mouse
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yehuh_mouse_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yehuh_mouse_generate_messages yehuh_mouse_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_nodejs _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_nodejs _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_nodejs _yehuh_mouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yehuh_mouse_gennodejs)
add_dependencies(yehuh_mouse_gennodejs yehuh_mouse_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yehuh_mouse_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse
)
_generate_msg_py(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse
)

### Generating Services
_generate_srv_py(yehuh_mouse
  "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse
)

### Generating Module File
_generate_module_py(yehuh_mouse
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yehuh_mouse_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yehuh_mouse_generate_messages yehuh_mouse_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/LightSensorValues.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_py _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/srv/TimedMotion.srv" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_py _yehuh_mouse_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/yehuh_mouse/msg/MotorFreqs.msg" NAME_WE)
add_dependencies(yehuh_mouse_generate_messages_py _yehuh_mouse_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yehuh_mouse_genpy)
add_dependencies(yehuh_mouse_genpy yehuh_mouse_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yehuh_mouse_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yehuh_mouse
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yehuh_mouse_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yehuh_mouse
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yehuh_mouse_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yehuh_mouse
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yehuh_mouse_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yehuh_mouse
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yehuh_mouse_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yehuh_mouse
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yehuh_mouse_generate_messages_py std_msgs_generate_messages_py)
endif()
