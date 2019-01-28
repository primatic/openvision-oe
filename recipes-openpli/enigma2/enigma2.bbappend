FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

MAINTAINER = "Open Vision Developers"

DEPENDS += "openvision-extra-rc-models"

inherit upx_compress

PV = "develop+git${SRCPV}"
PKGV = "develop+git${GITPKGV}"

SRC_URI = "\
	git://github.com/OpenVisionE2/enigma2-openvision.git;branch=develop;name=enigma2 \
	${@bb.utils.contains("TARGET_ARCH", "sh4", "", "git://github.com/OpenVisionE2/extra_rc_models.git;protocol=git;destsuffix=extra_rc_models;name=extrarcmodels", d)} \
	"

EXTRA_OECONF_append += "\
    ${@bb.utils.contains("MACHINE_FEATURES", "bwlcd128", "--with-bwlcd128" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "bwlcd140", "--with-bwlcd140" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "bwlcd255", "--with-bwlcd255" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd220", "--with-colorlcd220" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd390", "--with-colorlcd390" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd400", "--with-colorlcd400" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd480", "--with-colorlcd480" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd720", "--with-colorlcd720" , "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "colorlcd800", "--with-colorlcd800" , "", d)} \
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
