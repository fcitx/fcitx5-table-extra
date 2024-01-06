set(TABLE_NAME
  boshiamy zhengma cangjie3 cangjie5 cangjie-large
  quick3 quick5 quick-classic
  scj6 easy-large wu cantonese cantonhk jyutping-table stroke5 array30 array30-large
  wubi-large zhengma-large zhengma-chaoji zhengma-pinyin
  t9
  wubi98 wubi98-pinyin wubi98-single
  wubi98-large
  )

set(MB_FILE)
set(CONF_FILE)

foreach(table ${TABLE_NAME})
  fcitx5_translate_desktop_file("${table}.conf.in" "${table}.conf")
  add_custom_command(OUTPUT "${table}.main.dict"
    DEPENDS "${table}.txt"
    COMMAND LibIME::tabledict ARGS "${CMAKE_CURRENT_SOURCE_DIR}/${table}.txt"
    "${CMAKE_CURRENT_BINARY_DIR}/${table}.main.dict")
  set(MB_FILE ${MB_FILE} "${CMAKE_CURRENT_BINARY_DIR}/${table}.main.dict")
  set(CONF_FILE ${CONF_FILE} "${CMAKE_CURRENT_BINARY_DIR}/${table}.conf")
endforeach()
add_custom_target(table_data ALL DEPENDS ${MB_FILE})

install(FILES ${CONF_FILE} DESTINATION "${FCITX_INSTALL_PKGDATADIR}/inputmethod")
install(FILES ${MB_FILE} DESTINATION "${FCITX_INSTALL_PKGDATADIR}/table")
