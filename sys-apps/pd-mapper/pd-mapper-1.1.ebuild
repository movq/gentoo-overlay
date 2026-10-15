# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Qualcomm Protection domain mapper"
HOMEPAGE="https://github.com/linux-msm/pd-mapper"
SRC_URI="
	mirror+https://github.com/linux-msm/pd-mapper/archive/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	app-arch/xz-utils
	net-libs/qrtr
"
DEPEND="${RDEPEND}"

src_compile() {
	# Override CFLAGS to drop the hardcoded -g -O2. LDFLAGS must come from
	# the environment, as the Makefile appends -lqrtr -llzma to it
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" prefix="${EPREFIX}/usr"
}

src_install() {
	emake DESTDIR="${D}" prefix="${EPREFIX}/usr" install

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
}
