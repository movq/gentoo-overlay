# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# NOTE: The comments in this file are for instruction and documentation.
# They're not meant to appear with your final, production ebuild.  Please
# remember to remove them before submitting or committing your ebuild.  That
# doesn't mean you can't add your own comments though.

EAPI=9


#inherit autotools

DESCRIPTION="runit init scripts"

HOMEPAGE="https://git.mjones.io/mike/runit-scripts"

SRC_URI="https://git.mjones.io/cgit/mike/runit-scripts/snapshot/${P}.tar.gz"

#S="${WORKDIR}/${P}"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64 arm64"

RDEPEND="sys-process/runit"

#DEPEND="${RDEPEND}"

#BDEPEND=""

src_install() {
	dodir /etc
	cp -R --preserve=mode etc/sv "${ED}"/etc/ || die
	exeinto /etc/runit
	doexe etc/runit/1
	doexe etc/runit/2
	doexe etc/runit/3

	insinto /usr/lib
	doins -r usr/lib/init
}
