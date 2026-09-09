# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Linux initramfs generator"

HOMEPAGE="https://git.mjones.io/mike/tinyramfs"
_commit=29929f3d13f0340a842c196e10dc839ad52dd7f0

SRC_URI="https://git.mjones.io/cgit/mike/tinyramfs/snapshot/tinyramfs-${_commit}.tar.xz -> tinyramfs-0.3.0-mike.tar.xz"

S="${WORKDIR}/${PN}-${_commit}"

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
