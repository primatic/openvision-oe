FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append += "\
	file://09-undefine-macro-HAVE_CONFIG_H.patch \
	file://biss-caid.patch \
	file://openvision.patch \
	${@bb.utils.contains("MACHINE_FEATURES", "nogamma", "file://amlogic.patch file://defaultskin.patch", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "debug4", "file://set-default-debug-level-at-4.patch", "", d)} \
	file://radio.mvi \
	"

DEPENDS += "openvision-extra-rc-models"

inherit upx_compress

PV = "develop+git${SRCPV}"
PKGV = "develop+git${GITPKGV}"

SRC_URI = "\
	git://github.com/OpenPLi/enigma2.git;branch=develop;name=enigma2 \
	${@bb.utils.contains("TARGET_ARCH", "sh4", "", "git://github.com/OpenVisionE2/extra_rc_models.git;protocol=git;destsuffix=extra_rc_models;name=extrarcmodels", d)} \
	"

SRCREV_extrarcmodels_pn-${PN} = "${AUTOREV}"
SRCREV_FORMAT = "enigma2"

DESCRIPTION_enigma2-plugin-font-wqy-microhei = "wqy-microhei font supports Chinese EPG"
PACKAGES =+ "enigma2-plugin-font-wqy-microhei"
FILES_enigma2-plugin-font-wqy-microhei = "${datadir}/fonts/wqy-microhei.ttc ${datadir}/fonts/fallback.font"
ALLOW_EMPTY_enigma2-plugin-font-wqy-microhei = "1"

do_configure_prepend() {
	if [ ! "${TARGET_ARCH}" == "sh4" ]
	then
		# Restore the files first in case we run configure twice between checking out the source
		git --git-dir="${S}/.git" --work-tree="${S}" checkout "${S}/data/rc_models/Makefile.am"
		git --git-dir="${S}/.git" --work-tree="${S}" checkout "${S}/data/rc_models/rc_models.cfg"
		git --git-dir="${WORKDIR}/extra_rc_models/.git" --work-tree="${WORKDIR}/extra_rc_models" pull
		for i in $(find "${WORKDIR}/extra_rc_models" -maxdepth 1 -type f -name "*.xml" -o -name "*.png")
		do
			file="$(echo "${i}" | sed 's:.*/::')"
			sed -i '${s/$/'" $file"'/}' "${S}/data/rc_models/Makefile.am"
			cp -f "${i}" "${S}/data/rc_models/"
		done
		cat "${WORKDIR}/extra_rc_models/rc_models.cfg" >> "${S}/data/rc_models/rc_models.cfg"
	fi
}

do_install_prepend() {
	mv ${WORKDIR}/radio.mvi ${B}/data/radio.mvi
}
