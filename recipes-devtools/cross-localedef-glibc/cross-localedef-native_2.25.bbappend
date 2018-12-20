FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://workaround-build-with-glibc228.patch "
