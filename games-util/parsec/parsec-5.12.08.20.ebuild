# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Simple, low-latency game streaming"
HOMEPAGE="https://parsecgaming.com/"
SRC_URI="https://builds.parsecgaming.com/package/parsec-linux.deb"

LICENSE="Parsec-EULA"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
virtual/libc
x11-libs/cairo
media-libs/freetype
sys-devel/gcc
x11-libs/gdk-pixbuf
media-libs/mesa
dev-libs/glib
x11-libs/gtk+
x11-libs/pango
x11-libs/libSM
media-libs/libsoundio
sys-libs/libstdc++-v3
x11-libs/libX11
x11-libs/libXxf86vm
"



RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

QA_PREBUILT="usr/bin/parsecd usr/share/${PN}/skel/parsecd-5.so"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	cp -R usr/ "${D}/" || die "Could not copy."
}
