inherit upx_compress

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += "\
    file://add-SIGUSR2-signal-handler.patch \
"
