# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Language server implementation for GLSL"
HOMEPAGE="https://github.com/svenstaro/glsl-language-server"

inherit git-r3
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/svenstaro/glsl-language-server"
EGIT_COMMIT="${PV}"
EGIT_SUBMODULES=("*")

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	DESTDIR="${D}" ninja -C"${S}"/build install
}
