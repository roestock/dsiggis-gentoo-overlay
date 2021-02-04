# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8,9} )
inherit distutils-r1

DESCRIPTION="MicroPython Project Management Tool"
HOMEPAGE="https://github.com/BradenM/micropy-cli"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="$(python_gen_cond_dep 'dev-python/colorama[${PYTHON_USEDEP}]')
	$(python_gen_cond_dep 'dev-python/rshell[${PYTHON_USEDEP}]')
	$(python_gen_cond_dep 'dev-python/click[${PYTHON_USEDEP}]')"

RDEPEND="${DEPEND}"
BDEPEND=""
