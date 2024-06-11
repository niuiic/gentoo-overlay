# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A graphical tool for developing on containers and Kubernetes."
HOMEPAGE="https://podman-desktop.io/"

SRC_URI="https://github.com/containers/podman-desktop/releases/download/v${PV}/podman-desktop-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack "${A}" || die
	mv "${PN}-${PV}" "${PN}" || die
}

src_install() {
	mkdir "${ED}/opt" || die
	mv "${S}" "${ED}/opt/" || die
	for i in "${ED}/opt/${PN}/podman-desktop"; do
		dosym "../${PN}/${i##*/}" "/opt/bin/${i##*/}"
	done
}
