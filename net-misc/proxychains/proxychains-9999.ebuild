# Copyright 2023 Gentoo Authors

EAPI=8

DESCRIPTION="A tool to force any tcp connections to flow through a proxy (or proxy chain)"
HOMEPAGE="https://github.com/rofl0r/proxychains-ng"

inherit git-r3
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/rofl0r/proxychains-ng"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

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
