do_install () {
	install -d ${D}${localstatedir}
	install -d ${D}${localstatedir}/spool
	install -d ${D}${prefix}/keys
	install -d ${D}${bindir}
	install -d ${D}${sysconfdir}/tuxbox/scce
	ln -s ${prefix}/keys ${D}${localstatedir}/
	ln -s ${bindir} ${D}${localstatedir}/
	ln -s ${sysconfdir} ${D}${localstatedir}/
	ln -s ${sysconfdir}/tuxbox/scce ${D}${localstatedir}/
}
