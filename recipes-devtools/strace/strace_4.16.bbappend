FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://strace_oldkernel.patch"
SRC_URI_append_cube += "file://strace_oldkernel.patch"
SRC_URI_append_su980 += "file://strace_oldkernel.patch"
