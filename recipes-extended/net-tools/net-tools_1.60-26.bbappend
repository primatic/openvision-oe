FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://net-tools_oldkernel.patch"
SRC_URI_append_cube += "file://net-tools_oldkernel.patch"
SRC_URI_append_su980 += "file://net-tools_oldkernel.patch"
