FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://satipclient_oldkernel.patch"
SRC_URI_append_cube += "file://satipclient_oldkernel.patch"
SRC_URI_append_su980 += "file://satipclient_oldkernel.patch"
