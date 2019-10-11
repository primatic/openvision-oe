DESCRIPTION = "AutoTimer plugin"
MAINTAINER = "OpenPLi"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${OPENPLI_BASE}/LICENSE;md5=eb723b61539feef013de476e68b5c50a"

inherit gitpkgv
PV = "2.0+git${SRCPV}"
PKGV = "2.0+git${GITPKGV}"
SRCREV = "0d4b6534d0627e75530fbba2b305a200f96242ae"

S="${WORKDIR}/git"

SRC_URI[md5sum] = "04936ff426f6d38975819cb9bc76b130"
SRC_URI[sha256sum] = "719926cc37181bb9f9c0bdd0ac1517a855f82e39b6f6491bf63d5a8b587dab06"
SRC_URI = "git://github.com/OpenPLi/enigma2-plugins.git;protocol=https;branch=master \
           file://exclude-all-but-autotimer.patch \
"

FILES_${PN} = "/usr/lib/enigma2/python/Plugins/Extensions/AutoTimer/*"
PACKAGES = "${PN}"
EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"

do_compile() {
    echo ${PV} > ${S}/VERSION
    oe_runmake SWIG="swig" -f ${S}/*/Makefile.am 
}

do_install() {
	install -d ${D}/usr/lib/enigma2/python/Plugins/Extensions/AutoTimer
	install -m 0644 ${S}/*.py ${D}/usr/lib/enigma2/python/Plugins/Extensions/AutoTimer/
	python -O -m compileall ${D}/usr/lib/enigma2/python/Plugins/
#        oe_runmake -f ${S}/Makefile.am index-enigma2-plugins.xml DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} INCLUDEDIR=${includedir}
}
