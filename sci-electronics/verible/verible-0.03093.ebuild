# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VERSION="0.0-3093-g0bab5a51"

DESCRIPTION="A suite of SystemVerilog developer tools, including a parser, style-linter, and formatter."
HOMEPAGE="https://github.com/chipsalliance/verible"

inherit git-r3
EGIT_CLONE_TYPE=shallow
EGIT_REPO_URI="https://github.com/chipsalliance/verible"
EGIT_COMMIT="v${VERSION}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    >=dev-util/bazel-4.2.2
"

src_configure() {
	export JAVA_HOME=$(java-config --jdk-home)
	bazel build -c opt //...
}

TOOLS="${S}/bazel-bin/verilog/tools"

src_install() {
	exeinto /usr/local/bin
	doexe "${TOOLS}/diff/verible-verilog-diff"
	doexe "${TOOLS}/formatter/verible-verilog-format"
	doexe "${TOOLS}/lint/verible-verilog-lint"
	doexe "${TOOLS}/kythe/verible-verilog-kythe-extractor"
	doexe "${TOOLS}/kythe/verible-verilog-kythe-kzip-writer"
	doexe "${TOOLS}/ls/verible-verilog-ls"
	doexe "${TOOLS}/obfuscator/verible-verilog-obfuscate"
	doexe "${TOOLS}/preprocessor/verible-verilog-preprocessor"
	doexe "${TOOLS}/project/verible-verilog-project"
	doexe "${TOOLS}/syntax/verible-verilog-syntax"
}
