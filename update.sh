# use pkgdev and pkgcheck instead of repoman

function check() {
	xdg-open $1
	fd $2
	echo "----------------------------------------------------------------------------"
}

echo -e "check https://devmanual.gentoo.org/quickstart/index.html for tips to write ebuild.\n"

check "https://github.com/rofl0r/proxychains-ng/releases" proxychains
check "https://github.com/patriciogonzalezvivo/glslViewer/releases" glslviewer
check "https://docs.flutter.dev/get-started/install/linux/android?tab=download#download-then-install-flutter" flutter
