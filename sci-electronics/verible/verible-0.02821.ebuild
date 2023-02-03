# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VERSION="0.0-2821-gb2180bfa"

DESCRIPTION="A suite of SystemVerilog developer tools, including a parser, style-linter, and formatter."
HOMEPAGE="https://github.com/chipsalliance/verible"
SRC_URI="https://github.com/chipsalliance/verible/archive/refs/tags/v$VERSION.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    dev-util/bazel
"

S="$WORKDIR/verible-$VERSION"

src_install() {
	export JAVA_HOME=$(java-config --jdk-home)
	bazel run -c opt :install -- -s /usr/local/bin
}
