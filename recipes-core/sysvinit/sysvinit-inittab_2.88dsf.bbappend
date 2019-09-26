FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "\
    file://inittab \
    file://inittab-amlogic \
"

do_install() {
    install -d ${D}${sysconfdir}
    if [ "${BOX_BRAND}" = "mecool" ]; then
        install -m 0644 ${WORKDIR}/inittab-amlogic ${D}${sysconfdir}/inittab/inittab
    else
        install -m 0644 ${WORKDIR}/inittab ${D}${sysconfdir}/inittab
    fi
}
