function check() {
	xdg-open $1
	fd $2
	echo "----------------------------------------------------------------------------"
}

echo "check https://devmanual.gentoo.org/quickstart/index.html for tips to write ebuild"

check "https://dbeaver.io/download" dbeaver
check "https://github.com/milgra/sov/releases" sov
check "https://github.com/artemsen/swayimg/releases" swayimg
check "https://github.com/rofl0r/proxychains-ng/releases" proxychains
