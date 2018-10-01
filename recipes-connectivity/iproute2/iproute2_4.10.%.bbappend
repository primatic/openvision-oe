FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://iproute2_oldkernel.patch"
SRC_URI_append_cube += "file://iproute2_oldkernel.patch"
SRC_URI_append_su980 += "file://iproute2_oldkernel.patch"
