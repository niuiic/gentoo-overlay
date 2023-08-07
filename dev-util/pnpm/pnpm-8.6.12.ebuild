# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Fast, disk space efficient package manager"
HOMEPAGE="https://pnpm.io"

SRC_URI="https://github.com/pnpm/pnpm/releases/download/v${PV}/pnpm-linux-x64 -> ${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="net-libs/nodejs"

S="${PORTAGE_TMPDIR}/portage/${CATEGORY}/${PF}/distdir"

src_unpack() {
	true
}

src_install() {
	chmod +x pnpm
	dobin pnpm
}
