DESCRIPTION = "rc models"
MAINTAINER = "Open Vision Developers"
LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://LICENSE;beginline=3;endline=8;md5=17213e93942fd27819359eebdf0341b7"

SRCREV = "${AUTOREV}"

SRC_URI = "git://github.com/PLi-metas/extra_rc_models.git"

S = "${WORKDIR}/git"

inherit gitpkgv allarch

PV = "1.0+git${SRCPV}"
PKGV = "1.0+git${GITPKGV}"

do_install() {
	install -d ${D}/rc-models
	cp  -R ${S}/* ${D}/rc-models/
}

FILES_${PN} = "*"
