SRC_URI = "${@bb.utils.contains_any("MACHINE_FEATURES", "nogamma", "git://github.com/OpenVisionE2/servicemp3.git;branch=amlogic", "git://github.com/openpli/servicemp3.git;branch=master", d)}"

EXTRA_OECONF_append += "\
	--with-boxtype=${MACHINE} \
	${@bb.utils.contains("MACHINE_FEATURES", "nogamma", "--with-amlogic" , "", d)} \
	"
