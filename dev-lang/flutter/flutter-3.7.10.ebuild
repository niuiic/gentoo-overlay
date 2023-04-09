# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase."
HOMEPAGE="https://flutter.dev"

SRC_URI="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${PV}-stable.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="app-arch/unzip"

S="${WORKDIR}/${PN}"

src_install() {
	rm -rf "${S}/.git"
	mkdir "${ED}/opt" || die
	mv "${S}" "${ED}/opt/" || die
	# chown -R $(whoami):$(whoami) "${ED}/opt/${S}"

	for i in "${ED}/opt/${PN}/bin"/flutter*; do
		dosym "../${PN}/bin/${i##*/}" "/opt/bin/${i##*/}"
	done
}
