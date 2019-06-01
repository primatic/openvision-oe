PV = "10.3+git${SRCPV}"
PKGV = "10.3+git${GITPKGV}"

inherit gitpkgv

SRC_URI_remove ="svn://svn.xiph.org/trunk;module=cdparanoia;protocol=http"
SRC_URI += "git://github.com/OpenVisionE2/cdparanoia.git"

S = "${WORKDIR}/git"
