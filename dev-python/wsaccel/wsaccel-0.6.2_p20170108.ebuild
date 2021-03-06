# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

COMMIT="0fbd074c257c51b73de05b25ccb6488801320a32"
PYTHON_COMPAT=( python3_{7,8} )

inherit distutils-r1

DESCRIPTION="Accelerator for ws4py, autobahn and tornado"
HOMEPAGE="https://pypi.org/project/wsaccel/ https://github.com/methane/wsaccel"
SRC_URI="https://github.com/methane/wsaccel/archive/${COMMIT}.zip -> ${P}.zip"
S="${WORKDIR}/${PN}-${COMMIT}"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64 arm arm64 x86 ~amd64-linux ~x86-linux"

DEPEND="
	dev-python/cython[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
