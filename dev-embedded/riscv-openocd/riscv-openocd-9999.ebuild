# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Fork of OpenOCD that has RISC-V support"
HOMEPAGE="https://github.com/riscv/riscv-openocd"

inherit git-r3
EGIT_REPO_URI="https://github.com/riscv/riscv-openocd.git"

LICENSE="GPL-2"
SLOT="0"

src_configure() {
	./bootstrap
	econf --enable-remote-bitbang --program-prefix=riscv-
}

src_install() {
	emake DESTDIR="${D}" install
}
