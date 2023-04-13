# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

DESCRIPTION="Linux kernel module to support Turbo mode and RGB Keyboard for Acer Predator notebook series "
HOMEPAGE="https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module"

COMMIT="f9deb86d791d5727a74f149d188dc593373abd4f"
SRC_URI="https://github.com/JafarAkhondali/${PN}/archive/${COMMIT}.zip -> ${P}.zip"
         
LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${PN}-${COMMIT}

MODULE_NAMES="facer(extra:${S}/src:${S}/src)"
BUILD_TARGETS="clean"

inherit linux-info linux-mod

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KERNELDIR=${KV_DIR}"
}

src_prepare() {
	eapply_user
}

src_configure() {
	set_arch_to_kernel
}

src_compile() {
	emake
}

src_install() {
	linux-mod_src_install
	
	dobin ${S}/facer_rgb.py
}

pkg_postinst() {
	linux-mod_pkg_postinst
}

