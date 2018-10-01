FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://0001-no-pipe2-in-old-kernel.patch"
SRC_URI_append_cube += "file://0001-no-pipe2-in-old-kernel.patch"
SRC_URI_append_su980 += "file://0001-no-pipe2-in-old-kernel.patch"
