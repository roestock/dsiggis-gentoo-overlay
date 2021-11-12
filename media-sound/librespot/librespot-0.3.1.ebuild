# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.0

EAPI=8

CRATES="
	aes-0.6.0
	aes-ctr-0.6.0
	aes-soft-0.6.4
	aesni-0.10.0
	aho-corasick-0.7.18
	alsa-0.5.0
	alsa-sys-0.3.1
	anyhow-1.0.43
	async-trait-0.1.51
	atty-0.2.14
	autocfg-1.0.1
	base64-0.13.0
	bindgen-0.56.0
	bitflags-1.2.1
	block-buffer-0.9.0
	bumpalo-3.7.0
	byteorder-1.4.3
	bytes-1.0.1
	cc-1.0.69
	cesu8-1.1.0
	cexpr-0.4.0
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.19
	cipher-0.2.5
	clang-sys-1.2.0
	colored-1.9.3
	combine-4.6.0
	core-foundation-sys-0.8.2
	coreaudio-rs-0.10.0
	coreaudio-sys-0.2.8
	cpal-0.13.4
	cpufeatures-0.1.5
	crypto-mac-0.11.1
	ctr-0.6.0
	darling-0.10.2
	darling_core-0.10.2
	darling_macro-0.10.2
	derivative-2.2.0
	digest-0.9.0
	dns-sd-0.1.3
	either-1.6.1
	env_logger-0.8.4
	fnv-1.0.7
	form_urlencoded-1.0.1
	futures-0.3.16
	futures-channel-0.3.16
	futures-core-0.3.16
	futures-executor-0.3.16
	futures-io-0.3.16
	futures-macro-0.3.16
	futures-sink-0.3.16
	futures-task-0.3.16
	futures-util-0.3.16
	generic-array-0.14.4
	getopts-0.2.21
	getrandom-0.2.3
	glib-0.10.3
	glib-macros-0.10.1
	glib-sys-0.10.1
	glob-0.3.0
	gobject-sys-0.10.0
	gstreamer-0.16.7
	gstreamer-app-0.16.5
	gstreamer-app-sys-0.9.1
	gstreamer-base-0.16.5
	gstreamer-base-sys-0.9.1
	gstreamer-sys-0.9.1
	hashbrown-0.11.2
	headers-0.3.4
	headers-core-0.2.0
	heck-0.3.3
	hermit-abi-0.1.19
	hex-0.4.3
	hmac-0.11.0
	hostname-0.3.1
	http-0.2.4
	http-body-0.4.3
	httparse-1.5.1
	httpdate-1.0.1
	humantime-2.1.0
	hyper-0.14.11
	hyper-proxy-0.9.1
	ident_case-1.0.1
	idna-0.2.3
	if-addrs-0.6.5
	if-addrs-sys-0.3.2
	indexmap-1.7.0
	instant-0.1.10
	itertools-0.9.0
	itoa-0.4.7
	jack-0.7.1
	jack-sys-0.2.2
	jni-0.19.0
	jni-sys-0.3.0
	jobserver-0.1.24
	js-sys-0.3.53
	lazy_static-1.4.0
	lazycell-1.3.0
	lewton-0.10.2
	libc-0.2.99
	libloading-0.6.7
	libloading-0.7.0
	libm-0.2.1
	libmdns-0.6.1
	libpulse-binding-2.24.0
	libpulse-simple-binding-2.24.0
	libpulse-simple-sys-1.19.0
	libpulse-sys-1.19.1
	lock_api-0.4.4
	log-0.4.14
	mach-0.3.2
	match_cfg-0.1.0
	matches-0.1.9
	memchr-2.4.1
	memoffset-0.6.4
	mime-0.3.16
	mio-0.7.13
	miow-0.3.7
	muldiv-0.2.1
	multimap-0.8.3
	ndk-0.3.0
	ndk-0.4.0
	ndk-glue-0.3.0
	ndk-glue-0.4.0
	ndk-macro-0.2.0
	ndk-sys-0.2.1
	nix-0.20.1
	nom-5.1.2
	ntapi-0.3.6
	num-bigint-0.4.2
	num-derive-0.3.3
	num-integer-0.1.44
	num-rational-0.3.2
	num-traits-0.2.14
	num_cpus-1.13.0
	num_enum-0.5.4
	num_enum_derive-0.5.4
	oboe-0.4.4
	oboe-sys-0.4.4
	ogg-0.8.0
	once_cell-1.8.0
	opaque-debug-0.3.0
	parking_lot-0.11.1
	parking_lot_core-0.8.3
	paste-1.0.5
	pbkdf2-0.8.0
	peeking_take_while-0.1.2
	percent-encoding-2.1.0
	pin-project-lite-0.2.7
	pin-utils-0.1.0
	pkg-config-0.3.19
	portaudio-rs-0.3.2
	portaudio-sys-0.1.1
	ppv-lite86-0.2.10
	pretty-hex-0.2.1
	priority-queue-1.1.1
	proc-macro-crate-0.1.5
	proc-macro-crate-1.0.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro-nested-0.1.7
	proc-macro2-1.0.28
	protobuf-2.25.0
	protobuf-codegen-2.25.0
	protobuf-codegen-pure-2.25.0
	quote-1.0.9
	rand-0.8.4
	rand_chacha-0.3.1
	rand_core-0.6.3
	rand_distr-0.4.2
	rand_hc-0.3.1
	redox_syscall-0.2.10
	regex-1.5.4
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	rodio-0.14.0
	rpassword-5.0.1
	rustc-hash-1.1.0
	rustc_version-0.4.0
	ryu-1.0.5
	same-file-1.0.6
	scopeguard-1.1.0
	sdl2-0.34.5
	sdl2-sys-0.34.5
	semver-1.0.4
	serde-1.0.127
	serde_derive-1.0.127
	serde_json-1.0.66
	sha-1-0.9.7
	shannon-0.2.0
	shell-words-1.0.0
	shlex-0.1.1
	signal-hook-registry-1.4.0
	simple_logger-1.13.0
	slab-0.4.4
	smallvec-1.6.1
	socket2-0.4.1
	stdweb-0.1.3
	strsim-0.9.3
	strum-0.18.0
	strum_macros-0.18.0
	subtle-2.4.1
	syn-1.0.74
	synstructure-0.12.5
	system-deps-1.3.2
	tempfile-3.2.0
	termcolor-1.1.2
	thiserror-1.0.26
	thiserror-impl-1.0.26
	time-0.1.43
	tinyvec-1.3.1
	tinyvec_macros-0.1.0
	tokio-1.10.0
	tokio-macros-1.3.0
	tokio-stream-0.1.7
	tokio-util-0.6.7
	toml-0.5.8
	tower-service-0.3.1
	tracing-0.1.26
	tracing-core-0.1.19
	try-lock-0.2.3
	typenum-1.13.0
	unicode-bidi-0.3.6
	unicode-normalization-0.1.19
	unicode-segmentation-1.8.0
	unicode-width-0.1.8
	unicode-xid-0.2.2
	url-2.2.2
	uuid-0.8.2
	vergen-3.2.0
	version-compare-0.0.10
	version_check-0.9.3
	walkdir-2.3.2
	want-0.3.0
	wasi-0.10.2+wasi-snapshot-preview1
	wasm-bindgen-0.2.76
	wasm-bindgen-backend-0.2.76
	wasm-bindgen-macro-0.2.76
	wasm-bindgen-macro-support-0.2.76
	wasm-bindgen-shared-0.2.76
	web-sys-0.3.53
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	zerocopy-0.3.0
	zerocopy-derive-0.2.0
"

inherit cargo systemd

DESCRIPTION="An open source client library for Spotify, with support for Spotify Connect"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/librespot-org/librespot"
SRC_URI="$(cargo_crate_uris) 
	https://github.com/${PN}-org/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 ISC LGPL-3 MIT MPL-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE="alsa pulseaudio portaudio jack sdl"

get_features() {
	local out=( )
	if use alsa; then
   		out+=( alsa-backend )
	fi
	if use pulseaudio; then
		out+=( pulseaudio-backend )
	fi
	if use portaudio; then
		out+=( portaudio-backend )
	fi
	if use jack; then
		out+=( jackaudio-backend )
	fi
	if use sdl; then
		out+=( sdl-backend )
	fi

	printf "%s," "${out[@]}" | sed 's/,$//g'
}

DEPEND="
	media-libs/alsa-lib
	pulseaudio? ( media-sound/pulseaudio )
	portaudio? ( media-libs/portaudio )
	jack? ( virtual/jack )
	sdl? ( media-libs/libsdl2 )
"
RDEPEND=""

src_compile() {
	debug-print-function ${FUNCNAME} "$@"

	local features="$(get_features)"
	if [[ "${features}" ]]; then
		cargo_src_compile --features "${features}"
	else
		cargo_src_compile
	fi
}

src_install() {
	debug-print-function ${FUNCNAME} "$@"

	local features="$(get_features)"
	if [[ "${features}" ]]; then
		cargo_src_install --features "${features}"
	else
		cargo_src_install
	fi

	systemd_dounit "${FILESDIR}"/"${PN}".service
	systemd_install_serviced "${FILESDIR}"/"${PN}".service.conf
}
