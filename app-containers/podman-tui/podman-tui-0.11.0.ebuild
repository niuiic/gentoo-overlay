# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A terminal ui for podman"
HOMEPAGE="https://github.com/containers/podman-tui"
SRC_URI="https://github.com/containers/podman-tui/archive/refs/tags/v${PV}.zip"

LICENSE="APL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    >=dev-lang/go-1.19.10
"

src_configure() {
	make binary
	mv Makefile MakefileBp
}

src_install() {
	dobin ./bin/podman-tui
}
