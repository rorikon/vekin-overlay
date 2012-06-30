# Copyright 2008-2012 Funtoo Technologies
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils git-2

DESCRIPTION="Grive is an open source Linux client for Google Drive"
HOMEPAGE="https://github.com/Grive/grive"
EGIT_REPO_URI="git://github.com/Grive/grive.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-misc/curl 
    dev-libs/json-c 
    dev-libs/libgcrypt 
    dev-libs/boost"
RDEPEND="${DEPEND}"
