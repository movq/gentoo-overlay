# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

[[ ${PV} == 9999* ]] || CRATES="
	aho-corasick@1.1.4
	android_system_properties@0.1.5
	anstream@0.6.21
	anstyle-parse@0.2.7
	anstyle-query@1.1.4
	anstyle-wincon@3.0.10
	anstyle@1.0.13
	anyhow@1.0.100
	arrayvec@0.7.6
	async-broadcast@0.7.2
	async-channel@2.5.0
	async-executor@1.13.3
	async-io@2.6.0
	async-lock@3.4.1
	async-process@2.5.0
	async-recursion@1.1.1
	async-signal@0.2.13
	async-task@4.7.1
	async-trait@0.1.89
	atomic-waker@1.1.2
	autocfg@1.5.0
	axum-core@0.5.5
	axum@0.8.6
	base64@0.22.1
	bitflags@2.10.0
	block-buffer@0.10.4
	blocking@1.6.2
	bumpalo@3.19.0
	bytes@1.10.1
	cc@1.2.45
	cfg-if@1.0.4
	cfg_aliases@0.2.1
	chrono@0.4.42
	clap@4.5.51
	clap_builder@4.5.51
	clap_derive@4.5.49
	clap_lex@0.7.6
	colorchoice@1.0.4
	concurrent-queue@2.5.0
	core-foundation-sys@0.8.7
	cpufeatures@0.2.17
	crossbeam-utils@0.8.21
	crypto-common@0.1.6
	digest@0.10.7
	dyn-clone@1.0.20
	either@1.15.0
	endi@1.1.0
	enumflags2@0.7.12
	enumflags2_derive@0.7.12
	env_filter@0.1.4
	env_logger@0.11.8
	equivalent@1.0.2
	errno@0.3.14
	etherparse@0.19.0
	event-listener-strategy@0.5.4
	event-listener@5.4.1
	fastrand@2.3.0
	find-msvc-tools@0.1.4
	fixedbitset@0.5.7
	fnv@1.0.7
	fs2@0.4.3
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.6.1
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.9
	getrandom@0.3.4
	h2@0.4.12
	hashbrown@0.16.0
	heck@0.5.0
	hermit-abi@0.5.2
	hex@0.4.3
	http-body-util@0.1.3
	http-body@1.0.1
	http@1.3.1
	httparse@1.10.1
	httpdate@1.0.3
	hyper-timeout@0.5.2
	hyper-util@0.1.17
	hyper@1.7.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.64
	indexmap@2.12.0
	ipnet@2.11.0
	iptables@0.6.0
	is_terminal_polyfill@1.70.2
	itertools@0.14.0
	itoa@1.0.15
	jiff-static@0.2.16
	jiff@0.2.16
	js-sys@0.3.82
	lazy_static@1.5.0
	libc@0.2.177
	linux-raw-sys@0.11.0
	log@0.4.28
	matchit@0.8.4
	memchr@2.7.6
	memoffset@0.9.1
	mime@0.3.17
	mio@1.1.0
	mozim@0.3.1
	multimap@0.10.1
	netlink-packet-core@0.8.1
	netlink-packet-route@0.25.1
	netlink-proto@0.12.0
	netlink-sys@0.8.7
	nftables@0.6.3
	nix@0.29.0
	nix@0.30.1
	num-traits@0.2.19
	once_cell@1.21.3
	once_cell_polyfill@1.70.2
	ordered-stream@0.2.0
	parking@2.2.1
	paste@1.0.15
	percent-encoding@2.3.2
	petgraph@0.7.1
	pin-project-internal@1.1.10
	pin-project-lite@0.2.16
	pin-project@1.1.10
	pin-utils@0.1.0
	piper@0.2.4
	polling@3.11.0
	portable-atomic-util@0.2.4
	portable-atomic@1.11.1
	ppv-lite86@0.2.21
	prettyplease@0.2.37
	proc-macro-crate@3.4.0
	proc-macro2@1.0.103
	prost-build@0.14.1
	prost-derive@0.14.1
	prost-types@0.14.1
	prost@0.14.1
	pulldown-cmark-to-cmark@21.0.0
	pulldown-cmark@0.13.0
	quote@1.0.42
	r-efi@5.3.0
	rand@0.9.2
	rand_chacha@0.9.0
	rand_core@0.9.3
	ref-cast-impl@1.0.25
	ref-cast@1.0.25
	regex-automata@0.4.13
	regex-syntax@0.8.8
	regex@1.12.2
	rtnetlink@0.18.1
	rustix@1.1.2
	rustversion@1.0.22
	ryu@1.0.20
	schemars@1.1.0
	schemars_derive@1.1.0
	serde@1.0.228
	serde_core@1.0.228
	serde_derive@1.0.228
	serde_derive_internals@0.29.1
	serde_json@1.0.145
	serde_path_to_error@0.1.20
	serde_repr@0.1.20
	sha2@0.10.9
	shlex@1.3.0
	signal-hook-registry@1.4.6
	slab@0.4.11
	smallvec@1.15.1
	socket2@0.6.1
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.27.2
	strum_macros@0.27.2
	syn@2.0.109
	sync_wrapper@1.0.2
	tempfile@3.23.0
	thiserror-impl@1.0.69
	thiserror-impl@2.0.17
	thiserror@1.0.69
	thiserror@2.0.17
	tokio-macros@2.6.0
	tokio-stream@0.1.17
	tokio-util@0.7.17
	tokio@1.48.0
	toml_datetime@0.7.3
	toml_edit@0.23.7
	toml_parser@1.0.4
	tonic-build@0.14.2
	tonic-prost-build@0.14.2
	tonic-prost@0.14.2
	tonic@0.14.2
	tower-layer@0.3.3
	tower-service@0.3.3
	tower@0.5.2
	tracing-attributes@0.1.30
	tracing-core@0.1.34
	tracing@0.1.41
	try-lock@0.2.5
	typenum@1.19.0
	uds_windows@1.1.0
	unicase@2.8.1
	unicode-ident@1.0.22
	utf8parse@0.2.2
	uuid@1.18.1
	version_check@0.9.5
	want@0.3.1
	wasi@0.11.1+wasi-snapshot-preview1
	wasip2@1.0.1+wasi-0.2.4
	wasm-bindgen-macro-support@0.2.105
	wasm-bindgen-macro@0.2.105
	wasm-bindgen-shared@0.2.105
	wasm-bindgen@0.2.105
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.62.2
	windows-implement@0.60.2
	windows-interface@0.59.3
	windows-link@0.2.1
	windows-result@0.4.1
	windows-strings@0.5.1
	windows-sys@0.60.2
	windows-sys@0.61.2
	windows-targets@0.53.5
	windows_aarch64_gnullvm@0.53.1
	windows_aarch64_msvc@0.53.1
	windows_i686_gnu@0.53.1
	windows_i686_gnullvm@0.53.1
	windows_i686_msvc@0.53.1
	windows_x86_64_gnu@0.53.1
	windows_x86_64_gnullvm@0.53.1
	windows_x86_64_msvc@0.53.1
	winnow@0.7.13
	wit-bindgen@0.46.0
	zbus@5.12.0
	zbus_macros@5.12.0
	zbus_names@4.2.0
	zerocopy-derive@0.8.27
	zerocopy@0.8.27
	zvariant@5.8.0
	zvariant_derive@5.8.0
	zvariant_utils@3.2.1
"

RUST_MIN_VER="1.86"

inherit cargo systemd

DESCRIPTION="A container network stack"
HOMEPAGE="https://github.com/containers/netavark"

if [[ ${PV} == 9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/containers/netavark.git"
else
	SRC_URI="
		https://github.com/containers/netavark/archive/refs/tags/v${PV}.tar.gz -> netavark-${PV}.tar.gz
		${CARGO_CRATE_URIS}
	"
	KEYWORDS="amd64 arm64 ~loong ~ppc64 ~riscv"
fi

# main
LICENSE="Apache-2.0"
# deps
LICENSE+=" Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 MIT Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
BDEPEND="dev-go/go-md2man
	dev-libs/protobuf[protoc(+)]"

QA_FLAGS_IGNORED="
	usr/libexec/podman/${PN}"
QA_PRESTRIPPED="
	usr/libexec/podman/${PN}"

ECARGO_VENDOR="${WORKDIR}/vendor"

src_unpack() {
	if [[ ${PV} == 9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_prepare() {
	default
	sed -i -e "s|m0755 bin|m0755 $(cargo_target_dir)|g;" Makefile || die
}

src_compile() {
	cargo_src_compile
	export PREFIX="${EPREFIX}"/usr SYSTEMDDIR="$(systemd_get_systemunitdir)"
	emake docs
}

# Following is needed because we want to use `make install` instead of `cargo install` (exported by cargo.eclass)
src_install() {
	default
}
