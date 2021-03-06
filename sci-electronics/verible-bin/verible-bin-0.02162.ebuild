# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VERSION="v0.0-2162-g80b07f9c"

DESCRIPTION="A suite of SystemVerilog developer tools, including a parser, style-linter, and formatter."
HOMEPAGE="https://github.com/chipsalliance/verible"
SRC_URI="https://github.com/chipsalliance/verible/releases/download/$VERSION/verible-$VERSION-Ubuntu-20.04-focal-x86_64.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

S="$WORKDIR/verible-$VERSION"

src_install() {
	exeinto /usr/bin
	doexe bin/*
}
