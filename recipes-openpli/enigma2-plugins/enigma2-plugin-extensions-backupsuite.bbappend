RDEPENDS_${PN} = "\
	mtd-utils \
	mtd-utils-ubifs \
	${@bb.utils.contains("IMAGE_FSTYPES", "tar.bz2", "bzip2" , "", d)} \
	${@bb.utils.contains_any("IMAGE_FSTYPES", "jffs2nfi ubinfi", "dreambox-buildimage mtd-utils-jffs2" , "", d)} \
	enigma2-plugin-systemplugins-mphelp \
	"
