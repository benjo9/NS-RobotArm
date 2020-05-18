include_directories(
  include/
  config/
)

# RRBot Hardware Interface
add_library(rrbot_hw_interface
  src/rrbot_hw_interface.cpp
)
target_link_libraries(rrbot_hw_interface
  generic_hw_interface
  ${catkin_LIBRARIES}
)

# Main control executable
add_executable(rrbot_hw_main src/rrbot_hw_main.cpp)
target_link_libraries(rrbot_hw_main
  rrbot_hw_interface
  generic_hw_control_loop
  ${catkin_LIBRARIES}
)

add_service_files(DIRECTORY srv FILES driver.srv feedback.srv requested_state.srv velocity.srv)

generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
)

## Install ------------------------------------------------------------

# Install libraries
install(TARGETS
    rrbot_hw_interface
  LIBRARY DESTINATION
    ${CATKIN_PACKAGE_LIB_DESTINATION}
)

# Install executables
install(TARGETS
    rrbot_hw_main
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
  PATTERN ".svn" EXCLUDE)

install(DIRECTORY config/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
  PATTERN ".svn" EXCLUDE)

# Install header files
install(DIRECTORY include/rrbot_control/   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})
