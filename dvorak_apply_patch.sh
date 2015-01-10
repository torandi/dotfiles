patch -d / -p1 < dvorak_mod.patch
dpkg-reconfigure xkb-data
setxkbmap us -variant dvorak-alt-intl
