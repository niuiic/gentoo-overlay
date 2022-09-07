function check() {
	xdg-open $1
	fd $2
	echo "----------------------------------------------------------------------------"
}

echo -e "check https://devmanual.gentoo.org/quickstart/index.html for tips to write ebuild.\n"

check "https://dbeaver.io/download" dbeaver
check "https://github.com/milgra/sov/releases" sov
check "https://github.com/artemsen/swayimg/releases" swayimg
check "https://github.com/rofl0r/proxychains-ng/releases" proxychains
check "https://github.com/chipsalliance/verible/releases" verible-bin
check "https://github.com/keshavbhatt/ColorPicker/releases" color-picker
check "https://github.com/billyb2/glsl-language-server-gentoo/releases" glsl-language-server
