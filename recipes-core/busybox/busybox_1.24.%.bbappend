FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_APPEND += "\
    ${@bb.utils.contains("MACHINE_FEATURES", "oldkernel", "file://old_kernel.patch", "", d)} \
    "
