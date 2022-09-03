# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="An overlay that shows schemas for all workspaces to make navigation in sway easier."
HOMEPAGE="https://github.com/milgra/sov"
SRC_URI="https://github.com/milgra/sov/releases/download/${PV}/sov-${PV}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    dev-util/meson
    dev-util/ninja
"

DEPEND="
	dev-libs/wayland
	media-libs/freetype
	dev-libs/wayland-protocols
	dev-util/meson
"

src_configure() {
	meson_src_configure
}
