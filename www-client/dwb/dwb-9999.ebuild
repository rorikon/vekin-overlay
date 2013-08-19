# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils git-2

DESCRIPTION="Webkit-browser similar to vimprobable written in C"
HOMEPAGE="http://portix.bitbucket.org/dwb/"
EGIT_REPO_URI="https://bitbucket.org/portix/dwb.git"

#EGIT_COMMIT="e79118c"
#EGIT_COMMIT="c118bee"
#EGIT_COMMIT="40bb86b"
#EGIT_COMMIT="50d991b"
EGIT_COMMIT="082961e"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gtk3 windowicon"

DEPEND=""
RDEPEND="${DEPEND}
		!gtk3? (
			net-libs/webkit-gtk:2
			x11-libs/gtk+:2
		)
		gtk3? (
			net-libs/webkit-gtk:3
			x11-libs/gtk+:3
		)"

src_prepare() {
    if use windowicon; then
	epatch "${FILESDIR}"/dwb-9999-windowicon.patch
	fi
}

src_compile() {
	if use gtk3; then
		emake GTK=3
	else
		emake
	fi
}

src_install() {
		emake DESTDIR="${D}" install || die
}
