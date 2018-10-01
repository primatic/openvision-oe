FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_dm800 += "file://legacy_kernel.patch"
SRC_URI_append_cube += "file://legacy_kernel.patch"
SRC_URI_append_su980 += "file://legacy_kernel.patch"
