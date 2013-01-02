cmake_minimum_required(VERSION 2.6)

project(fcitx-table-extra NONE)

find_package(Fcitx 4.2.7 REQUIRED)
find_program(TXT2MB txt2mb REQUIRED)

_fcitx_add_uninstall_target()

add_subdirectory(po)
add_subdirectory(icons)
add_subdirectory(tables)
