# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd toolchain-funcs

COMMIT="29277ef0bcbe22468a3836b796dc525ba6df87f3"

DESCRIPTION="Routing of diagnostics related messages between host and various subsystems"
HOMEPAGE="https://github.com/linux-msm/diag"
SRC_URI="
	mirror+https://github.com/linux-msm/diag/archive/${COMMIT}.tar.gz
		-> diag-${COMMIT}.tar.gz
"
S="${WORKDIR}/diag-${COMMIT}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	net-libs/qrtr
	virtual/libudev:=
"
DEPEND="
	${RDEPEND}
	virtual/os-headers
"

src_compile() {
	emake CC="$(tc-getCC)" prefix="${EPREFIX}/usr"
}

src_install() {
	emake DESTDIR="${D}" prefix="${EPREFIX}/usr" install
	einstalldocs

	newinitd "${FILESDIR}/diag-router.initd" diag-router
	systemd_dounit "${FILESDIR}/diag-router.service"
}
