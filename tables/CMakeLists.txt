set(TABLE_NAME
  boshiamy zhengma cangjie3 cangjie5 cangjie-big
  quick3 quick5 quick-classic
  scj6 easy-big wu cantonese cantonhk jyutping stroke5 array30 array30-big
  wubi-large zhengma-large zhengma-pinyin
  t9
  )

set(MB_FILE)
set(CONF_FILE)

foreach(table ${TABLE_NAME})
  fcitx_translate_add_apply_source("${table}.conf.in"
    "${CMAKE_CURRENT_BINARY_DIR}/${table}.conf")
  fcitx_translate_add_sources("${table}.conf.in")
  add_custom_command(OUTPUT "${table}.mb"
    DEPENDS "${table}.txt"
    COMMAND "${TXT2MB}" ARGS "${CMAKE_CURRENT_SOURCE_DIR}/${table}.txt"
    "${CMAKE_CURRENT_BINARY_DIR}/${table}.mb")
  set(MB_FILE ${MB_FILE} "${CMAKE_CURRENT_BINARY_DIR}/${table}.mb")
  set(CONF_FILE ${CONF_FILE} "${CMAKE_CURRENT_BINARY_DIR}/${table}.conf")
endforeach()
add_custom_target(table_data ALL DEPENDS ${MB_FILE})

install(FILES ${CONF_FILE} DESTINATION ${FCITX4_PREFIX}/share/fcitx/table)
install(FILES ${MB_FILE} DESTINATION ${FCITX4_PREFIX}/share/fcitx/table)
