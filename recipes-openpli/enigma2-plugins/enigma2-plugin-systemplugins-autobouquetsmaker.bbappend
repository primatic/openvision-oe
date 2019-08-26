FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "\
	git://github.com/oe-alliance/AutoBouquetsMaker.git;protocol=git \
	file://openvision.patch \
	"
