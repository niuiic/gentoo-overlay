# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A flexible tool for redirecting a given program's TCP traffic to SOCKS5 or HTTP proxy."
HOMEPAGE="https://github.com/hmgle/graftcp"

inherit git-r3
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/hmgle/graftcp"
EGIT_COMMIT="v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
