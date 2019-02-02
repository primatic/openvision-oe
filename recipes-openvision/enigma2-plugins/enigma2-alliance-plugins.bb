SUMMARY = "Additional plugins for Enigma2"
MAINTAINER = "oe-alliance team"
LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://COPYING;md5=8e37f34d0e40d32ea2bc90ee812c9131"

PACKAGE_ARCH = "${MACHINE_ARCH}"

PACKAGES_DYNAMIC = "enigma2-plugin-alliance-.*"

inherit autotools-brokensep gitpkgv pythonnative gettext

PV = "git${SRCPV}"
PKGV = "git${GITPKGV}"

SRC_URI = "git://github.com/OpenVisionE2/alliance-plugins.git;protocol=http"

S = "${WORKDIR}/git"

PROVIDES += " \
    enigma2-plugin-extensions-dlnabrowser \
    enigma2-plugin-extensions-dlnaserver \
    enigma2-plugin-extensions-fempa \
    enigma2-plugin-extensions-ondemand \
    enigma2-plugin-extensions-ondemand-openuitzendinggemist \
    enigma2-plugin-extensions-rcuselect \
    enigma2-plugin-extensions-remotechannelstreamconverter \
    enigma2-plugin-extensions-rezap \
    enigma2-plugin-extensions-streamtv \
    enigma2-plugin-extensions-tunerserver \
    enigma2-plugin-extensions-webbrowser \
    enigma2-plugin-systemplugins-abmcustommiximporter \
    enigma2-plugin-systemplugins-blindscan \
    enigma2-plugin-systemplugins-channelsimporter \
    enigma2-plugin-systemplugins-fancontrol \
    enigma2-plugin-systemplugins-firmwareupgrade \
    enigma2-plugin-systemplugins-fpgaupgrade \
    enigma2-plugin-systemplugins-micomupgrade \
    enigma2-plugin-systemplugins-multitranscodingsetup \
    enigma2-plugin-systemplugins-remotecontrolcode \
    enigma2-plugin-systemplugins-satipclient \
    enigma2-plugin-systemplugins-terrestrialscan \
    enigma2-plugin-systemplugins-vfdcontrol \
    ${@bb.utils.contains("MACHINE_FEATURES", "legacykernel", "" , "enigma2-plugin-systemplugins-wirelessaccesspoint", d)} \
    "

DEPENDS = "\
    ${@bb.utils.contains("MACHINE_FEATURES", "blindscan-dvbc", "virtual/blindscan-dvbc" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "blindscan-dvbs", "virtual/blindscan-dvbs" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "legacykernel", "" , "bridge-utils hostapd", d)} \
    djmount \
    hddtemp \
    librtmp \
    minidlna \
    python-beautifulsoup python-dnspython python-lxml python-pyamf python-simplejson \
    satipclient \
    "

DESCRIPTION_enigma2-plugin-extensions-dlnabrowser = "this is dlna/upnp browser using djmount"
RDEPENDS_enigma2-plugin-extensions-dlnabrowser = "djmount fuse-utils libfuse2 libupnp1.6 libneon27"
DESCRIPTION_enigma2-plugin-extensions-dlnaserver = "this is dlna server using minidlna"
RDEPENDS_enigma2-plugin-extensions-dlnaserver = "minidlna"
DESCRIPTION_enigma2-plugin-extensions-fempa = "Norwegian P4 FEM PAA radio show player."
DESCRIPTION_enigma2-plugin-extensions-ondemand = "Watch on demand TV."
RDEPENDS_enigma2-plugin-extensions-ondemand = "python-dnspython python-beautifulsoup python-lxml python-simplejson python-pyamf"
DESCRIPTION_enigma2-plugin-extensions-ondemand-openuitzendinggemist = "Watch NL-IP TV"
DESCRIPTION_enigma2-plugin-extensions-rcuselect = "Change Remote for Wetek"
DESCRIPTION_enigma2-plugin-extensions-remotechannelstreamconverter = "Fetch channels from remote bouquets and make them available locally"
RDEPENDS_enigma2-plugin-extensions-remotechannelstreamconverter = "python-shell"
RREPLACES_enigma2-plugin-extensions-remotechannelstreamconverter = "enigma2-plugin-extensions-remotestreamconvert"
DESCRIPTION_enigma2-plugin-extensions-rezap = "ReZap Sync Tool for Wetek"
DESCRIPTION_enigma2-plugin-extensions-streamtv = "iptv player"
RDEPENDS_enigma2-plugin-extensions-streamtv = "librtmp1"
DESCRIPTION_enigma2-plugin-extensions-tunerserver = "Builds a virtual channels list"
DESCRIPTION_enigma2-plugin-extensions-webbrowser = "Webbrowser launcher"
FILES_enigma2-plugin-extensions-webbrowser_append = "${datadir}/keymaps"
RDEPENDS_enigma2-plugin-extensions-webbrowser = "python-gdata libqtwebkite4 webbrowser-utils qt4-embedded-fonts qt4-embedded-plugin-imageformat-gif qt4-embedded-plugin-imageformat-ico qt4-embedded-plugin-imageformat-jpeg qt4-embedded-plugin-imageformat-mng qt4-embedded-plugin-imageformat-svg qt4-embedded-plugin-imageformat-tiff qt4-embedded-plugin-iconengine-svgicon"
DESCRIPTION_enigma2-plugin-systemplugins-abmcustommiximporter = "Imports ABM CustomMix files from Github."
DESCRIPTION_enigma2-plugin-systemplugins-audioeffect = "Audio Effect setup"
DESCRIPTION_enigma2-plugin-systemplugins-blindscan = "blindscan"
RRECOMMENDS_enigma2-plugin-systemplugins-blindscan = "virtual/blindscan-dvbs"
DESCRIPTION_enigma2-plugin-systemplugins-channelsimporter = "Imports a copy of the channel list from a remote receiver and loads it on the local receiver."
DESCRIPTION_enigma2-plugin-systemplugins-fancontrol = "Control your internal system fan."
RDEPENDS_enigma2-plugin-systemplugins-fancontrol_et9x00 = "hddtemp"
DESCRIPTION_enigma2-plugin-systemplugins-firmwareupgrade = "Upgrade your system Firmware"
DESCRIPTION_enigma2-plugin-systemplugins-fpgaupgrade = "Upgrade your system FPGA"
DESCRIPTION_enigma2-plugin-systemplugins-micomupgrade = "micomupgrade"
DESCRIPTION_enigma2-plugin-systemplugins-multitranscodingsetup = "Setup multitranscoding"
DESCRIPTION_enigma2-plugin-systemplugins-remotecontrolcode = "Change Remote Control Code"
DEPENDS_enigma2-plugin-systemplugins-satipclient = "satipclient"
DESCRIPTION_enigma2-plugin-systemplugins-satipclient = "Satip Client setup"
REPLACES_enigma2-plugin-systemplugins-satipclient = "enigma2-plugin-extensions-satipclient"
RDEPENDS_enigma2-plugin-systemplugins-satipclient = "satipclient"
DESCRIPTION_enigma2-plugin-systemplugins-terrestrialscan = "Selects the strongest transponders where there are duplicates and allows filtering by network id."
DESCRIPTION_enigma2-plugin-systemplugins-vfdcontrol = "vfd controller"
DESCRIPTION_enigma2-plugin-systemplugins-wirelessaccesspoint = "Using a Wireless module as AP."
RDEPENDS_enigma2-plugin-systemplugins-wirelessaccesspoint = "hostapd bridge-utils"

ALLOW_EMPTY_${PN} = "1"
PACKAGES += "${PN}-meta"
FILES_${PN}-meta = "${datadir}/meta"
INSANE_SKIP_${PN} += "build-deps"

EXTRA_OECONF = " \
    BUILD_SYS=${BUILD_SYS} \
    HOST_SYS=${HOST_SYS} \
    STAGING_INCDIR=${STAGING_INCDIR} \
    STAGING_LIBDIR=${STAGING_LIBDIR} \
    --with-boxtype=${MACHINE} \
    --with-arch=${TARGET_ARCH} \
    "

do_install_append() {
	# remove unused .pyc files
	find ${D}/usr/lib/enigma2/python/ -name '*.pyc' -exec rm {} \;
}

python populate_packages_prepend() {
    enigma2_plugindir = bb.data.expand('${libdir}/enigma2/python/Plugins', d)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/[a-zA-Z0-9_]+.*$', 'enigma2-plugin-%s', '%s', recursive=True, match_path=True, prepend=True)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/.*\.py$', 'enigma2-plugin-%s-src', '%s (source files)', recursive=True, match_path=True, prepend=True)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/.*\.la$', 'enigma2-plugin-%s-dev', '%s (development)', recursive=True, match_path=True, prepend=True)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/.*\.a$', 'enigma2-plugin-%s-staticdev', '%s (static development)', recursive=True, match_path=True, prepend=True)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/(.*/)?\.debug/.*$', 'enigma2-plugin-%s-dbg', '%s (debug)', recursive=True, match_path=True, prepend=True)
    do_split_packages(d, enigma2_plugindir, '^(\w+/\w+)/.*\/.*\.po$', 'enigma2-plugin-%s-po', '%s (translations)', recursive=True, match_path=True, prepend=True)
}
