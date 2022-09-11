# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=(python3_{5..10} pypy)

inherit distutils-r1

DESCRIPTION="A Python module which provides functions to return paths to the directories defined by the XDG Base Directory Specification, to save you from duplicating the same snippet of logic in every Python utility you write that deals with user cache, configuration, or data files. "
HOMEPAGE="https://github.com/srstevenson/xdg"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/setuptools[$PYTHON_USEDEP]"

src_install() {
	distutils-r1_src_install
}
