FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = " \
    git://github.com/OpenVisionE2/satip-client.git;protocol=git \
    file://satipclient.sh \
    ${@bb.utils.contains("MACHINE_FEATURES", "oldkernel", "file://satipclient_oldkernel.patch", "", d)} \
"

SRC_URI_append_arm += "file://0001-auto-detect-and-avoid-ioctl-conflicts.patch"

EXTRA_OECONF = " \
    --with-boxtype=${MACHINE} \
    --with-boxbrand="${BOX_BRAND}" \
    "
