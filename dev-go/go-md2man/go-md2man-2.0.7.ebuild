# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGO_SUM=(
        "github.com/russross/blackfriday/v2 v2.1.0"
        "github.com/russross/blackfriday/v2 v2.1.0/go.mod"
        )

inherit go-module sysroot

go-module_set_globals

DESCRIPTION="A utility to convert markdown to man pages"
HOMEPAGE="https://github.com/cpuguy83/go-md2man"
SRC_URI="
	https://github.com/cpuguy83/go-md2man/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}
"

LICENSE="BSD-2 MIT"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~loong ppc64 ~riscv ~x86"

src_compile() {
	emake build
	sysroot_try_run_prefixed ./bin/go-md2man -in go-md2man.1.md -out go-md2man.1
}

src_test() {
	emake test
}

src_install() {
	dobin bin/go-md2man
	[[ -s go-md2man.1 ]] && doman go-md2man.1
}
