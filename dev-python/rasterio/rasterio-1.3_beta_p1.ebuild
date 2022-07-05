# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{9,10} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Fast and direct raster I/O for use with Numpy and SciPy"
HOMEPAGE="https://pypi.org/project/rasterio/ https://github.com/mapbox/rasterio"
SRC_URI="https://github.com/${PN}/${PN}/archive/refs/tags/${PV%%_*}b${PV:(-1)}.tar.gz"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="sci-libs/gdal[${PYTHON_USEDEP},python]"

LICENSE="BSD"
SLOT="0"

S=${WORKDIR}/${PN}-${PV%%_*}b${PV:(-1)}
