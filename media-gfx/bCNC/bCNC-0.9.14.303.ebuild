# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_6)
PYTHON_REQ_USE="tk"

inherit distutils-r1 eutils fdo-mime

DESCRIPTION="Swiss army knife for all your CNC/g-code needs"
HOMEPAGE="https://pypi.org/project/bcnc/ https://github.com/vlachoudis/bCNC"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"
IUSE="scipy +serial opencv"

LICENSE="GPLv2"
SLOT="0"

DEPEND="dev-python/pyserial[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	scipy? ( sci-libs/scipy[${PYTHON_USEDEP}] )
	opencv? ( media-libs/opencv[${PYTHON_USEDEP},python] )
	dev-python/pillow[${PYTHON_USEDEP}]"

python_prepare() {
	sed -i -e "s/find_packages()/find_packages(exclude=['tests'])/" setup.py || die
	sed -i -e '/opencv-python/d' setup.py || die
}

python_install_all() {
	default
	doicon -s 128 "${FILESDIR}"/${PN}.png
	make_desktop_entry /usr/bin/${PN} ${PN} /usr/share/icons/hicolor/128x128/apps/${PN}.png Graphics
}

pkg_postinst() {
	fdo-mime_mime_database_update
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	fdo-mime_mime_database_update
	xdg_desktop_database_update
	xdg_icon_cache_update
}