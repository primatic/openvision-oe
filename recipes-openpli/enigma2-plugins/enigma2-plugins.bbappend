FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "\
	git://github.com/OpenPLi/enigma2-plugins.git \
	file://openvision.patch \
	"
