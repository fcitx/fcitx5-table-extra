set(TABLE_NAME boshiamy zhengma cangjie3 cangjie5 cangjie-big)

set(MB_FILE)
set(CONF_FILE)

foreach(table ${TABLE_NAME})
    intltool_merge_translation(${CMAKE_CURRENT_SOURCE_DIR}/${table}.conf.in ${CMAKE_CURRENT_BINARY_DIR}/${table}.conf )
    
    add_custom_command(OUTPUT ${table}.mb
                       DEPENDS ${table}.txt
                       COMMAND ${TXT2MB} ARGS ${CMAKE_CURRENT_SOURCE_DIR}/${table}.txt ${CMAKE_CURRENT_BINARY_DIR}/${table}.mb)
                       
    set(MB_FILE ${MB_FILE} ${CMAKE_CURRENT_BINARY_DIR}/${table}.mb)
    set(CONF_FILE ${CONF_FILE} ${CMAKE_CURRENT_BINARY_DIR}/${table}.conf)
endforeach(table ${TABLE_NAME})
                       
add_custom_target(table_data ALL DEPENDS ${MB_FILE} ${CONF_FILE})

install(FILES ${CONF_FILE} DESTINATION ${FCITX4_PREFIX}/share/fcitx/table)
install(FILES ${MB_FILE} DESTINATION ${FCITX4_PREFIX}/share/fcitx/table)