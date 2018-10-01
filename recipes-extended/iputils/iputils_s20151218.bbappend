FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://iputils_oldkernel.patch"
SRC_URI_append_cube += "file://iputils_oldkernel.patch"
SRC_URI_append_su980 += "file://iputils_oldkernel.patch"
