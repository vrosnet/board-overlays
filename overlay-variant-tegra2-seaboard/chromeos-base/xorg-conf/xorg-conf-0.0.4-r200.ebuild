# Copyright (c) 2009-2010 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=2

DESCRIPTION="Board specific xorg configuration file."

LICENSE="BSD"
SLOT="0"
KEYWORDS="arm"
IUSE="opengles"

RDEPEND=""

src_install() {
	insinto /etc/X11
	if use opengles; then
		newins "${FILESDIR}/xorg.conf-${PV}" xorg.conf
	else
		newins "${FILESDIR}/xorg.conf.fbdev" xorg.conf
	fi
}
