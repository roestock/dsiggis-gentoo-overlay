# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1

DESCRIPTION="2D and 3D vector, matrix, quaternion and geometry module. updated to python 3."
HOMEPAGE="http://partiallydisassembled.net/euclid.html"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"
IUSE=""

LICENSE="lgpl-2.1"
SLOT="0"
