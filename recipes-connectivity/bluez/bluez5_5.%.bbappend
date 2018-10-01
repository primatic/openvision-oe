FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_dm800 += "file://old_kernel.patch"
SRC_URI_append_cube += "file://old_kernel.patch"
SRC_URI_append_su980 += "file://old_kernel.patch"
