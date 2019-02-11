FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += "${@bb.utils.contains_any("MACHINE_FEATURES", "nogamma", "file://servicemp3-amlogic.patch", "", d)}"
