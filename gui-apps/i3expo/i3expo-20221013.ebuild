# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Exposè for i3 WM"
HOMEPAGE="https://github.com/morrolinux/i3expo-ng"
KEYWORDS="~amd64"

inherit git-r3
EGIT_REPO_URI="https://github.com/morrolinux/i3expo-ng"
EGIT_COMMIT="b55a74bf367475db5b9e21213ced684b50607fe2"

LICENSE="MIT"
SLOT="0"

BDEPEND="dev-python/pip"

DEPEND="
    x11-wm/i3
    dev-python/pygame
    dev-python/i3ipc
    dev-python/pillow
    dev-python/pyxdg
    dev-python/python-xlib
"

src_configure() {
	rm Makefile
	rm setup.py
	# use `pkg-config --list-all | grep ^python` to search python library
	gcc -shared -O3 -Wall -fPIC -Wl,-soname,prtscn $(pkg-config --cflags --libs python-3.11) -o prtscn.so prtscn.c -lX11 -I /usr/include/python3.11
	default
}

src_install() {
	sed -i 's/str(xdg_config_home())/"\/etc"/g' i3expod.py
	exeinto /usr/local/bin
	doexe i3expod.py
	doexe prtscn.so
	cp defaultconfig config
	insinto /etc/i3expo
	doins config
}
