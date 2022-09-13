# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Exposè for i3 WM"
HOMEPAGE="https://github.com/morrolinux/i3expo-ng"
KEYWORDS="~amd64"

inherit git-r3
EGIT_REPO_URI="https://github.com/morrolinux/i3expo-ng"
EGIT_COMMIT="6768f5a9b98f26ca7f83da472a04706bbea55d87"

LICENSE="MIT"
SLOT="0"

BDEPEND="dev-python/pip"

DEPEND="
    x11-wm/i3
    dev-python/pygame
    dev-python/i3ipc
    dev-python/pillow
    dev-python/pyxdg
"

src_configure() {
	sed -i '21d' Makefile
}

src_install() {
	exeinto /home/niuiic/.local/bin
	doexe i3expod.py
	doexe prtscn.so
	cp defaultconfig config
	insinto /home/niuiic/.config/i3expo
	doins config
}
