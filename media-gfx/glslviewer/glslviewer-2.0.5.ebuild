# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Console-based GLSL Sandbox for 2D/3D shaders"
HOMEPAGE="https://github.com/patriciogonzalezvivo/glslViewer"

inherit git-r3
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/patriciogonzalezvivo/glslViewer"
EGIT_COMMIT="${PV}"
EGIT_SUBMODULES=("*")

LICENSE="BSD3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="wayland"

DEPEND="
	sys-libs/ncurses
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	if use wayland; then
		cmake -DNO_X11=TRUE
	else
		cmake
	fi
}
