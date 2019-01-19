FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += "${@bb.utils.contains("MACHINE_FEATURES", "nogamma", "file://0001-Revert-Add-Support-for-Gamma-Curve-aka-SDR-HDR-HLG.patch", "", d)}"
