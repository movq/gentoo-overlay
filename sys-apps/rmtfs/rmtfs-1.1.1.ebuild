# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs udev

DESCRIPTION="Qualcomm Remote Filesystem Service Implementation"
HOMEPAGE="https://github.com/linux-msm/rmtfs"
SRC_URI="
	mirror+https://github.com/linux-msm/rmtfs/archive/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	net-libs/qrtr
	virtual/libudev:=
"
DEPEND="${RDEPEND}"

PATCHES=(
	# Backported from upstream master
	"${FILESDIR}/${P}-modem-study.patch"
)

src_compile() {
	# Override CFLAGS to drop the hardcoded -g -O2. LDFLAGS must come from
	# the environment, as the Makefile appends the libraries to it
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" prefix="${EPREFIX}/usr"
}

src_install() {
	emake DESTDIR="${D}" prefix="${EPREFIX}/usr" install

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
	newconfd "${FILESDIR}/${PN}.confd" "${PN}"
	udev_dorules "${FILESDIR}/65-${PN}.rules"
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
