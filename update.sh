# use pkgdev and pkgcheck instead of repoman

function check() {
	xdg-open $1
	fd $2
	echo "----------------------------------------------------------------------------"
}

echo -e "check https://devmanual.gentoo.org/quickstart/index.html for tips to write ebuild.\n"

check "https://github.com/milgra/sov/releases" sov
check "https://github.com/artemsen/swayimg/releases" swayimg
check "https://github.com/rofl0r/proxychains-ng/releases" proxychains
check "https://github.com/chipsalliance/verible/releases" verible-bin
check "https://github.com/keshavbhatt/ColorPicker/releases" color-picker
check "https://github.com/patriciogonzalezvivo/glslViewer/releases" glslviewer
check "https://dart.dev/get-dart/archive" dart-sdk
check "https://docs.flutter.dev/release/archive?tab=linux" flutter
check "https://github.com/containers/podman-tui/releases" podman-tui
check "https://github.com/svenstaro/glsl-language-server/releases" glsl-language-server

# i3expo and its dependency packages
check "https://github.com/morrolinux/i3expo-ng" i3expo
check "https://github.com/altdesktop/i3ipc-python/releases" i3ipc
