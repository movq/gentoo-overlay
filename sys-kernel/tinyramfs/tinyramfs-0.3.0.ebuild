# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Linux initramfs generator"

HOMEPAGE="https://git.mjones.io/mike/tinyramfs"

SRC_URI="https://git.mjones.io/mike/tinyramfs/archive/1d8fe3e206c32b31c32c8565741b5210e49486a2.tar.gz -> tinyramfs-0.3.0-mike.tar.gz"

S="${WORKDIR}/${PN}"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64"

RDEPEND=""

DEPEND="${RDEPEND}"

#BDEPEND="virtual/pkgconfig"

src_compile() {
	:
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
}
