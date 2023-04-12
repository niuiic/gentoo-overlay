# Copyright 2023 Gentoo Authors
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

DEPEND="
	sys-libs/ncurses
	media-video/ffmpeg
	media-libs/glu
"

src_configure() {
	sed -i '93a\    set(CURSES_NEED_NCURSES TRUE)' CMakeLists.txt
	sed -i 's/find_package(Curses)/find_package(Curses REQUIRED)/g' CMakeLists.txt
	sed -i 's/CURSES_INCLUDE_DIR/CURSES_INCLUDE_DIRS/g' CMakeLists.txt
	sed -i 's/CURSES_LIBRARY/CURSES_LIBRARIES/g' CMakeLists.txt
	default
}

src_install() {
	dobin "${S}/build/glslViewer"
}
