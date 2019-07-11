PV = "10.3+git${SRCPV}"
PKGV = "10.3+git${GITPKGV}"

inherit gitpkgv

SRC_URI = "git://github.com/OpenVisionE2/cdparanoia.git"

S = "${WORKDIR}/git"
