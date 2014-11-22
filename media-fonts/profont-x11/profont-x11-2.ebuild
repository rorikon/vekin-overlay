# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit font

DESCRIPTION="ProFont - The ultimate programming font!"
HOMEPAGE="http://tobiasjung.name/profont/"
SRC_URI="http://tobiasjung.name/downloadfile.php?file=${PN}.zip"
LICENSE="as-is"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-fbsd"
IUSE="unzip"

DEPEND="unzip? ( app-arch/unzip )"
RDEPEND=""

S="${WORKDIR}/${PN}"
FONT_S="${S}"
FONT_SUFFIX="pcf"
