FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_dm800 += "file://define-RTNL_FAMILY_MAX.patch"
SRC_URI_append_cube += "file://define-RTNL_FAMILY_MAX.patch"
SRC_URI_append_su980 += "file://define-RTNL_FAMILY_MAX.patch"
