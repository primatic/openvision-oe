SRC_URI = "git://github.com/christophecvr/gstreamer1.0-plugin-multibox-dvbmediasink;branch=openatv-dev;protocol=git file://Add-Support-for-Gamma-Curve.patch"

EXTRA_OECONF = "${DVBMEDIASINK_CONFIG} --with-gstversion=${GSTVERSION} --with-machine=${MACHINE}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
