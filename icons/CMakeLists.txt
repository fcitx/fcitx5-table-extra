set(ICON48
  fcitx-cantonese.png fcitx-cantonhk.png fcitx-jyutping-table.png fcitx-quick3.png
  fcitx-quick5.png fcitx-quick-classic.png fcitx-scj6.png fcitx-stroke5.png
  fcitx-wu.png)
set(ICON64
  fcitx-t9.png fcitx-boshiamy.png fcitx-easy-large.png fcitx-array30.png
  fcitx-array30-large.png fcitx-zhengma.png)

install(FILES
    ${ICON64}
    DESTINATION share/icons/hicolor/64x64/apps)

install(FILES
    ${ICON48}
    DESTINATION share/icons/hicolor/48x48/apps)
