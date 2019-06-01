FILES_${PN} = "/usr/share/enigma2/PLi-HD/"

do_install() {
	install -d ${D}/usr/share
	cp -r ${S}/usr/share/enigma2/PLi-HD/* ${D}/usr/share/enigma2/PLi-HD/
	chmod -R a+rX ${D}/usr/share/enigma2/PLi-HD/
}
