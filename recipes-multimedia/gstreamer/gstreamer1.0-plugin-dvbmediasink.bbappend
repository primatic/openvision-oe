SRC_URI = "git://github.com/christophecvr/gstreamer1.0-plugin-multibox-dvbmediasink;branch=openatv-dev;protocol=git file://prevent-buffer-overflow.patch"

EXTRA_OECONF = "${DVBMEDIASINK_CONFIG} --with-gstversion=${GSTVERSION} --with-machine=${MACHINE}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
