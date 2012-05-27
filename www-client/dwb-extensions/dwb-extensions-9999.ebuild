# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils mercurial

DESCRIPTION="Extensions for the dwb browser."
HOMEPAGE="http://portix.bitbucket.org/dwb/"
EHG_REPO_URI="https://bitbucket.org/portix/dwb_extensions"

EHG_REVISION="default"
S="${WORKDIR}/hg/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""

src_install() {
dodir usr/share/dwb/extensions/
cp -R "${S}"* "${D}usr/share/dwb/extensions/" || die "Install failed!"
}
