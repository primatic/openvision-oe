SRC_URI = "git://github.com/OpenVisionE2/gstreamer1.0-plugin-multibox-dvbmediasink;protocol=git"

EXTRA_OECONF = "${DVBMEDIASINK_CONFIG} --with-gstversion=${GSTVERSION} --with-machine=${MACHINE}"
