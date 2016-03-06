# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "server: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iserver:/home/evan/Code/cloud-robotics/server/src/server/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg" NAME_WE)
add_custom_target(_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server" "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg" ""
)

get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg" NAME_WE)
add_custom_target(_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server" "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server
)
_generate_msg_cpp(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server
)

### Generating Services

### Generating Module File
_generate_module_cpp(server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(server_generate_messages server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg" NAME_WE)
add_dependencies(server_generate_messages_cpp _server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg" NAME_WE)
add_dependencies(server_generate_messages_cpp _server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_gencpp)
add_dependencies(server_gencpp server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server
)
_generate_msg_lisp(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server
)

### Generating Services

### Generating Module File
_generate_module_lisp(server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(server_generate_messages server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg" NAME_WE)
add_dependencies(server_generate_messages_lisp _server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg" NAME_WE)
add_dependencies(server_generate_messages_lisp _server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_genlisp)
add_dependencies(server_genlisp server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server
)
_generate_msg_py(server
  "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server
)

### Generating Services

### Generating Module File
_generate_module_py(server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(server_generate_messages server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/CurrentClients.msg" NAME_WE)
add_dependencies(server_generate_messages_py _server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/Code/cloud-robotics/server/src/server/msg/NewClient.msg" NAME_WE)
add_dependencies(server_generate_messages_py _server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_genpy)
add_dependencies(server_genpy server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(server_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(server_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(server_generate_messages_py sensor_msgs_generate_messages_py)
