SUMMARY = "Enigma2 DreamPlex skin pack"
MAINTAINER = "OpenViX"
SECTION = "misc"
PRIORITY = "optional"
LICENSE = "CLOSED"

inherit allarch

SRC_URI = "file://skins.zip"

S = "${WORKDIR}"

FILES_${PN} = "/usr/*"

do_install() {
    mkdir -p ${D}/usr/lib/enigma2/python/Plugins/Extensions/DreamPlex/skins
    cp -r --preserve=mode,links ${S}/DreamPlexSkins/* ${D}/usr/lib/enigma2/python/Plugins/Extensions/DreamPlex/skins/
}
