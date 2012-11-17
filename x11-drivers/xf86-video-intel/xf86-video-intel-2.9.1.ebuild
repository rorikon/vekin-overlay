# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/xf86-video-intel/xf86-video-intel-2.9.1.ebuild,v 1.6 2012/06/03 12:38:27 chithanh Exp $

inherit x-modular

DESCRIPTION="X.Org driver for Intel cards"

KEYWORDS="~x86-fbsd"
IUSE="dri"

RDEPEND=">=x11-base/xorg-server-1.6
	<x11-libs/libdrm-2.4.21
	x11-libs/libpciaccess
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXvMC"
DEPEND="${RDEPEND}
	>=x11-proto/dri2proto-1.99.3
	x11-proto/fontsproto
	x11-proto/randrproto
	x11-proto/renderproto
	x11-proto/xineramaproto
	x11-proto/xextproto
	x11-proto/xproto
	dri? ( x11-proto/xf86driproto
	       x11-proto/glproto )"

pkg_setup() {
	CONFIGURE_OPTIONS="$(use_enable dri)"
}
