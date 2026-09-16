# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="LLM Coding Tool"

HOMEPAGE="https://git.mjones.io/mike/lct"

SRC_URI="https://git.mjones.io/cgit/mike/lct/snapshot/lct-${PV}.tar.xz"

S="${WORKDIR}/${PN}"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64"

# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
RDEPEND="
    net-misc/curl
    dev-libs/libunistring
    dev-libs/json-c
    dev-libs/openssl
"

DEPEND="${RDEPEND}"

BDEPEND="
    virtual/pkgconfig
"

src_configure() {
    meson_src_configure
}

src_install() {
	dobin "${BUILD_DIR}"/lct
}
