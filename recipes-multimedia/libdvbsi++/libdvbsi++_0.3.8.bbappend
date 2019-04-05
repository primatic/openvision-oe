FILESEXTRAPATHS_append := "${THISDIR}/files"

SRC_URI_append_sh4 = " \
    file://sh4.patch \
"
SRC_URI = "git://github.com/OpenVisionE2/libdvbsi.git"
