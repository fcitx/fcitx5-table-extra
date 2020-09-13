cmake_minimum_required(VERSION 2.6)

project(fcitx5-table-extra NONE)

find_package(ECM 1.0 REQUIRED)
set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

include(FeatureSummary)
include(ECMUninstallTarget)

find_package(Gettext REQUIRED)
find_package(LibIMETable REQUIRED)
find_package(Fcitx5Core REQUIRED)

add_subdirectory(icons)
add_subdirectory(tables)

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)
