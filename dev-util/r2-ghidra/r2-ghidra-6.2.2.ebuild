# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..14} )

inherit meson python-any-r1

DESCRIPTION="Ghidra decompiler integration for radare2"
HOMEPAGE="https://github.com/radareorg/r2ghidra"

GHIDRA_NATIVE_COMMIT=483ae94bcbc661a77667e52f1eff75928cb6aa2e
GHIDRA_NATIVE_PATCHES=(
	0001-space-after-comma.patch
	0002-make-sleigharch-public.patch
	0004-public-fields.patch
	0006-readonly-warning.patch
	0010-null-subflow.patch
	0020-Fix-double-free-crash-when-deinitializing-multiple-X.patch
	0023-Undef-LoadImage-for-windows.patch
	0044-bad-unicode-codepoint.patch
	0055-datatype-clone.patch
	0056-nullderef-workaround.patch
	0080-getparent-flow.patch
	0090-nocasts-warnings.patch
	0091-decompiler-xml-packer.patch
	0092-badvar-segfault.patch
	0093-no-virtual-destructor.patch
	0094-parse-64bit-integers.patch
	0100-CHAR-windows.patch
	ghidra-native.patch
)

SRC_URI="
	mirror+https://github.com/radareorg/r2ghidra/archive/${PV}.tar.gz
		-> ${P}.tar.gz
	mirror+https://github.com/radareorg/ghidra-native/archive/${GHIDRA_NATIVE_COMMIT}.tar.gz
		-> ${P}-ghidra-native.tar.gz
"
S="${WORKDIR}/r2ghidra-${PV}"

LICENSE="LGPL-3 Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	=dev-util/radare2-${PV}*:=
	virtual/zlib:=
"
DEPEND="${RDEPEND}"
BDEPEND="
	${PYTHON_DEPS}
	virtual/pkgconfig
"

src_prepare() {
	default

	mv "${WORKDIR}/ghidra-native-${GHIDRA_NATIVE_COMMIT}" \
		subprojects/ghidra-native || die
	cp -a subprojects/packagefiles/ghidra-native/. \
		subprojects/ghidra-native/ || die

	pushd subprojects/ghidra-native > /dev/null || die
	local patch
	for patch in "${GHIDRA_NATIVE_PATCHES[@]}"; do
		eapply "${S}/subprojects/packagefiles/ghidra-native/patches/${patch}"
	done
	popd > /dev/null || die
}
