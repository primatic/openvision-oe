FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_dm800 += "file://iptables_oldkernel.patch"
SRC_URI_append_cube += "file://iptables_oldkernel.patch"
SRC_URI_append_su980 += "file://iptables_oldkernel.patch"
