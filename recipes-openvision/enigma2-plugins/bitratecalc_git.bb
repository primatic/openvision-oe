DESCRIPTION = "Library that implements bitrate calculations from enigma2"
HOMEPAGE = "https://github/Taapat/bitratecalc"
LICENSE = "CC-BY-NC-ND-4.0"
LIC_FILES_CHKSUM = "file://${OPENPLI_BASE}/meta-openpli/licenses/CC-BY-NC-ND-4.0;md5=8009795292660aa9c8da059e5b1581c1"

DEPENDS = "enigma2"

inherit gitpkgv autotools pythonnative pkgconfig

PV = "git${SRCPV}"
PKGV = "git${GITPKGV}"

SRC_URI = "git://github.com/OpenVisionE2/bitratecalc.git;protocol=http"
SRC_URI_sh4 = "git://github.com/OpenVisionE2/bitratecalc.git;protocol=http;branch=sh4"

S = "${WORKDIR}/git"

FILES_${PN} = "${libdir}/bitratecalc.so"

