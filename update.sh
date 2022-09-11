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
check "https://github.com/patriciogonzalezvivo/glslViewer/releases" glslviewer

# i3expo and its dependency packages
check "https://github.com/morrolinux/i3expo-ng" i3expo
check "https://github.com/altdesktop/i3ipc-python/releases" i3ipc
check "https://github.com/srstevenson/xdg/releases" xdg
