# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson systemd

DESCRIPTION="Trivial File Transfer Protocol server over AF_QIPCRTR"
HOMEPAGE="https://github.com/linux-msm/tqftpserv"
SRC_URI="
	mirror+https://github.com/linux-msm/tqftpserv/archive/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	app-arch/zstd:=
	net-libs/qrtr
"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default

	# Always install the unit, rather than only when systemd is found
	sed -i 's/systemd.found()/true/' meson.build || die
	# The name service has been in the kernel since 5.7
	sed -i '/qrtr-ns.service/d' tqftpserv.service.in || die
}

src_configure() {
	local emesonargs=(
		-Dsystemd-unit-prefix="$(systemd_get_systemunitdir)"
	)
	meson_src_configure
}

src_install() {
	meson_src_install

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
}
