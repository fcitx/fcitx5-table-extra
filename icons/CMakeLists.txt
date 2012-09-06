set(ICON48
    fcitx-cantonhk.png fcitx-jyutping.png
    fcitx-quick3.png fcitx-quick5.png fcitx-quick-classic.png fcitx-scj6.png fcitx-wu.png
    fcitx-zhengma.png)
set(ICON64 fcitx-boshiamy.png fcitx-cantonese.png fcitx-easy-big.png fcitx-array30.png fcitx-array30-big.png fcitx-stroke5.png)

install(FILES
    ${ICON64}
    DESTINATION share/icons/hicolor/64x64/apps)

install(FILES
    ${ICON48}
    DESTINATION share/icons/hicolor/48x48/apps)

    

foreach(icon ${ICON48} ${ICON64})
    string(REPLACE "fcitx-" "" icon_new ${icon})
    install(FILES ${icon} RENAME ${icon_new} DESTINATION share/fcitx/imicon)
endforeach()
