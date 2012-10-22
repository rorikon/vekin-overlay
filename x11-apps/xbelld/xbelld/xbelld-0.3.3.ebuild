# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="X daemon that performs an action every time the bell is rung"
HOMEPAGE="http://http://code.google.com/p/xbelld/"
SRC_URI="http://xbelld.googlecode.com/files/${P}.tbz2"
inherit eutils

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_unpack() {
    unpack ${A}
	cd ${S}
	epatch "${FILESDIR}"/dmf-1.patch
}

src_compile() {
    cc -c  -Wall -DVERSION=\"0.3.3\" -std=gnu99 -DDEBUG -g -DHAVE_ALSA -I/usr/include/alsa xbelld.c -o xbelld.o
    cc -lX11 -lasound   xbelld.o -o xbelld
}

src_install() {
	dobin xbelld
	doman xbelld.1
	dodoc README ChangeLog
}
