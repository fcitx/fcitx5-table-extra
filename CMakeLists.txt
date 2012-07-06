cmake_minimum_required(VERSION 2.6)

project(fcitx-table-extra NONE)

find_package(Fcitx 4.2.5 REQUIRED)
find_package(Gettext REQUIRED)
find_program(TXT2MB txt2mb REQUIRED)

# uninstall target
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/cmake_uninstall.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
    IMMEDIATE @ONLY)

add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)

add_subdirectory(icons)
add_subdirectory(tables)
add_subdirectory(po)
