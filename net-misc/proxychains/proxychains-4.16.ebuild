# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A tool to force any tcp connections to flow through a proxy (or proxy chain)"
HOMEPAGE="https://github.com/rofl0r/proxychains-ng"
SRC_URI="https://github.com/rofl0r/proxychains-ng/releases/download/v${PV}/proxychains-ng-${PV}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}/${PN}-ng-${PV}"

src_prepare() {
	default
	sed -i "s/proxychains4/proxychains/g" Makefile
}

src_configure() {
	econf --prefix=/usr --sysconfdir=/etc
}

src_install() {
	insinto /etc
	doins src/proxychains.conf
	emake DESTDIR="${D}" install
}
