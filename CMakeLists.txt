cmake_minimum_required(VERSION 2.6)

project(fcitx-table-extra) 

find_package(Fcitx 4.2.0 REQUIRED)
find_package(Gettext REQUIRED)
find_program(TXT2MB txt2mb REQUIRED)

add_subdirectory(icons)
add_subdirectory(tables)
add_subdirectory(po)