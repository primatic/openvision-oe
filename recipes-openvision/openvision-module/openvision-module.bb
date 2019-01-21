SECTION = "kernel/modules"
LICENSE = "CLOSED"
PRIORITY = "required"
MAINTAINER = "Open Vision Developers"

PACKAGE_ARCH = "${MACHINE_ARCH}"

SRC_URI = "file://openvisionmodule.c file://Makefile file://timesync"

S = "${WORKDIR}"

INITSCRIPT_NAME = "timesync"
INITSCRIPT_PARAMS = "start 19 3 ."

inherit module machine_kernel_pr update-rc.d

EXTRA_OEMAKE = "KSRC=${STAGING_KERNEL_BUILDDIR}"

do_compile() {
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
	oe_runmake -C "${STAGING_KERNEL_BUILDDIR}" M="${S}" modules
}

do_install () {
    install -d ${D}${base_libdir}/modules/${KERNEL_VERSION}/kernel/drivers/openvisionmodule
    install -m 0644 ${S}/openvisionmodule.ko ${D}${base_libdir}/modules/${KERNEL_VERSION}/kernel/drivers/openvisionmodule
    install -d ${D}/${sysconfdir}/modules-load.d
    echo openvisionmodule >> ${D}/${sysconfdir}/modules-load.d/zzopenvisionmodule.conf
    install -d ${D}/${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/timesync ${D}/${sysconfdir}/init.d/timesync
}

FILES_${PN} += "${sysconfdir}/modules-load.d/zzopenvisionmodule.conf ${sysconfdir}/init.d/timesync"
