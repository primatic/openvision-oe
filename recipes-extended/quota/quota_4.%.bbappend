FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://fix_old_header.patch"
SRC_URI_append_cube += "file://fix_old_header.patch"
SRC_URI_append_su980 += "file://fix_old_header.patch"
