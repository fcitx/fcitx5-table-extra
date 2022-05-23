cmake_minimum_required(VERSION 3.8)

project(fcitx5-table-extra VERSION 5.0.10)

find_package(ECM 1.0 REQUIRED)
set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

include(FeatureSummary)
include(GNUInstallDirs)
include(ECMUninstallTarget)

find_package(Gettext REQUIRED)
find_package(LibIMETable REQUIRED)
find_package(Fcitx5Core REQUIRED)

add_subdirectory(icons)
add_subdirectory(tables)

fcitx5_translate_desktop_file(org.fcitx.Fcitx5.Addon.TableExtra.metainfo.xml.in
                              org.fcitx.Fcitx5.Addon.TableExtra.metainfo.xml XML)

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/org.fcitx.Fcitx5.Addon.TableExtra.metainfo.xml" DESTINATION ${CMAKE_INSTALL_DATADIR}/metainfo)

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)
