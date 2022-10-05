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

DEPEND="
	sys-libs/ncurses
	media-video/ffmpeg
	media-libs/glu
	x11-libs/libXdamage
	x11-libs/libXi
	x11-libs/libXxf86vm
	x11-libs/libXrandr
	x11-libs/libXinerama
	x11-libs/libXcursor
	sys-libs/ncurses-compat
	dev-libs/libatomic_ops
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${S}/build/glslViewer"
}
