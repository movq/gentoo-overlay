# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Userspace reference for net/qrtr in the Linux kernel"
HOMEPAGE="https://github.com/linux-msm/qrtr"
SRC_URI="
	mirror+https://github.com/linux-msm/qrtr/archive/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

DEPEND="virtual/os-headers"

src_configure() {
	# The name service has been in the kernel since 5.7
	local emesonargs=(
		-Dqrtr-ns=disabled
		-Dsystemd-service=disabled
	)
	meson_src_configure
}
