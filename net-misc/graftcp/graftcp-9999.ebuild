# Copyright 2023 Gentoo Authors

EAPI=8

EGIT_REPO_URI="https://github.com/hmgle/graftcp.git"

inherit git-r3 go-module

DESCRIPTION="A flexible tool for redirecting a given program's TCP traffic to SOCKS5 or HTTP proxy."
HOMEPAGE="https://github.com/hmgle/graftcp"
SRC_URI=""

BDEPEND="dev-lang/go"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

src_unpack() {
	git-r3_src_unpack
}
