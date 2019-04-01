SUMMARY = "dreambox ci plus module"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://LICENSE;md5=1ebbd3e34237af26da5dc08a4e440464"

Replaces_${PN} = "dreamciplus"
Provides_${PN} = "dreamciplus"

RDEPENDS_${PN} = "enigma2-plugin-extensions-socketmmi"

S = "${WORKDIR}/git"

SRC_URI = "git://github.com/OpenVisionE2/dreamci.git;protocol=http"

inherit gitpkgv

PV = "9.7+git${SRCPV}"
PKGV = "9.7+git${GITPKGV}"

FILES_${PN} = "${bindir}"

do_compile () {
        make -C ${S}/src dreamciplus
}

do_install() {
  install -d ${D}/usr/bin
  install -m 0755 ${S}/src/dreamciplus ${D}/usr/bin/dreamciplus

}

pkg_postinst_${PN} () {
#!/bin/sh
  if [ -e /usr/bin/dreamciplus ]; then
     /usr/bin/dreamciplus $1
  fi
exit 0
}

pkg_prerm_${PN} () {
#!/bin/sh
  if [ -e /usr/bin/dreamciplus ]; then
     /usr/bin/dreamciplus $1
  fi
exit 0
}
