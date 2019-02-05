require openvision-image.bb

KERNEL_WIFI_DRIVERS += "\
	firmware-carl9170 \
	firmware-htc7010 \
	firmware-htc9271 \
	firmware-rt2870 \
	firmware-rt73 \
	firmware-rtl8712u \
	firmware-zd1211 \
	kernel-module-ath9k-htc \
	kernel-module-carl9170 \
	kernel-module-r8712u \
	kernel-module-rt2500usb \
	kernel-module-rt2800usb \
	kernel-module-rt73usb \
	kernel-module-rtl8187 \
	kernel-module-zd1211rw \
	"

EXTRA_KERNEL_WIFI_DRIVERS += "\
	firmware-rtl8192cu \
	firmware-rtl8188eu \
	${@bb.utils.contains_any("MACHINE", "ventonhdx beyonwizt3 mbtwin sezam5000hd", "", "kernel-module-r8188eu", d)} \
	kernel-module-rtl8192cu \
	"

EXTERNAL_WIFI_DRIVERS += "\
	firmware-rtl8188eu \
	firmware-rtl8192eu \
	rtl8188eu \
	rtl8192eu \
	"

ENIGMA2_PLUGINS += "\
	enigma2-plugin-extensions-audiosync \
	enigma2-plugin-extensions-autobackup \
	enigma2-plugin-extensions-backupsuite \
	enigma2-plugin-extensions-cacheflush \
	enigma2-plugin-extensions-cutlisteditor \
	enigma2-plugin-extensions-graphmultiepg \
	enigma2-plugin-extensions-mediaplayer \
	enigma2-plugin-extensions-mediascanner \
	enigma2-plugin-extensions-moviecut \
	enigma2-plugin-extensions-openwebif-extras \
	enigma2-plugin-extensions-pictureplayer \
	${@bb.utils.contains("MACHINE_FEATURES", "smallflash", "enigma2-plugin-extensions-pluginskinmover", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "dvb-c", "enigma2-plugin-systemplugins-cablescan" , "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "ci", "enigma2-plugin-systemplugins-commoninterfaceassignment", "", d)} \
	${@bb.utils.contains("OPENPLI_FEATURES", "ci", "enigma2-plugin-systemplugins-commoninterfaceassignment", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "fan", "enigma2-plugin-systemplugins-extrafancontrol", "", d)} \
	${@bb.utils.contains("OPENPLI_FEATURES", "fan", "enigma2-plugin-systemplugins-extrafancontrol", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "fanctrl", "enigma2-plugin-extensions-fancontrol2", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "blindscan-dvbs", "enigma2-plugin-systemplugins-blindscan enigma2-plugin-systemplugins-satscan" , "", d)} \
	enigma2-plugin-systemplugins-fastscan \
	enigma2-plugin-systemplugins-hdmicec \
	enigma2-plugin-systemplugins-hotplug \
	enigma2-plugin-systemplugins-networkbrowser \
	enigma2-plugin-systemplugins-osd3dsetup \
	enigma2-plugin-systemplugins-osdpositionsetup \
	enigma2-plugin-systemplugins-positionersetup \
	enigma2-plugin-systemplugins-satfinder \
	${@bb.utils.contains("MACHINE_FEATURES", "sh4booster", "enigma2-plugin-systemplugins-sh4boostercontrol", "", d)} \
	enigma2-plugin-systemplugins-skinselector \
	enigma2-plugin-systemplugins-softwaremanager \
	${@bb.utils.contains("MACHINE_FEATURES", "dvb-t", "enigma2-plugin-systemplugins-terrestrialscan" , "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "7seg", "enigma2-plugin-systemplugins-vfdcontrol", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "7segment", "enigma2-plugin-systemplugins-vfdcontrol", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "videoenhancement", "", "enigma2-plugin-systemplugins-videoenhancement", d)} \
	enigma2-plugin-systemplugins-videomode \
	enigma2-plugin-systemplugins-videotune \
	enigma2-plugin-systemplugins-wirelesslan \
	${@bb.utils.contains("MACHINE_FEATURES", "smallflash", "", " \
	enigma2-plugin-extensions-blurayplayer \
	${@bb.utils.contains('MACHINE_FEATURES', 'bluetooth', 'enigma2-plugin-extensions-btdevicesmanager', '', d)} \
	${@bb.utils.contains('MACHINE_FEATURES', 'dvd', 'enigma2-plugin-extensions-cdinfo enigma2-plugin-extensions-dvdplayer', '', d)} \
	${@bb.utils.contains('OPENPLI_FEATURES', 'dvd', 'enigma2-plugin-extensions-cdinfo enigma2-plugin-extensions-dvdplayer', '', d)} \
	enigma2-plugin-extensions-dlnabrowser \
	enigma2-plugin-extensions-e2iplayer \
	enigma2-plugin-extensions-e2iplayer-deps \
	enigma2-plugin-extensions-filebrowser \
	enigma2-plugin-extensions-foreca \
	${@bb.utils.contains('MACHINE_FEATURES', 'grautec', 'enigma2-plugin-extensions-grautec', '', d)} \
	${@bb.utils.contains('MACHINE_FEATURES', 'colorlcd', 'enigma2-plugin-extensions-lcd4linux', '', d)} \
	enigma2-plugin-extensions-openwebif-extras-terminal \
	${@bb.utils.contains('MACHINE_FEATURES', 'nogamma', 'enigma2-plugin-extensions-rcuselect enigma2-plugin-extensions-rezap', '', d)} \
	enigma2-plugin-extensions-reconstructapsc \
	enigma2-plugin-extensions-vlcplayer \
	enigma2-plugin-extensions-xmodem \
	enigma2-plugin-softcams-oscam \
	enigma2-plugin-softcams-oscam-emu \
	enigma2-plugin-systemplugins-bh-skin-support \
	${@bb.utils.contains('MACHINE_FEATURES', 'micom', 'enigma2-plugin-systemplugins-micomupgrade' , '', d)} \
	${@bb.utils.contains('MACHINE_FEATURES', 'multitranscoding', 'enigma2-plugin-systemplugins-multitranscodingsetup', '', d)} \
	${@bb.utils.contains('MACHINE_FEATURES', 'ctrlrc', 'enigma2-plugin-systemplugins-remotecontrolcode', '', d)} \
	${@bb.utils.contains('MACHINE_FEATURES', 'satip', 'enigma2-plugin-systemplugins-satipclient' , '', d)} \
	enigma2-plugin-systemplugins-setpasswd \
	enigma2-plugin-systemplugins-systemtime \
	${@bb.utils.contains('MACHINE_FEATURES', 'transcoding', 'enigma2-plugin-systemplugins-transcodingsetup', '', d)}", d)} \
	"

DEPENDS += "\
	enigma2 \
	enigma2-alliance-plugins \
	enigma2-pliplugins \
	enigma2-plugins \
	"

IMAGE_INSTALL += "\
	aio-grab \
	enigma2 \
	${ENIGMA2_PLUGINS} \
	${@bb.utils.contains("TARGET_ARCH", "sh4", "kernel-module-block2mtd", "", d)} \
	libavahi-client \
	${@bb.utils.contains("TARGET_ARCH", "sh4", "libcrypto", "", d)} \
	openvision-module \
	openvision-version-info \
	settings-autorestore \
	tuxbox-common \
	${@bb.utils.contains_any("MACHINE", "vuuno vuduo vuultimo vusolo vusolo2 vuduo2 vusolose vuzero vuuno4k vuuno4kse vuzero4k vuultimo4k vusolo4k vuduo4k", "vuplus-tuner-turbo", "", d)} \
	wget \
	${@bb.utils.contains("MACHINE_FEATURES", "kernelwifi", "${KERNEL_WIFI_DRIVERS}", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "extrakernelwifi", "${EXTRA_KERNEL_WIFI_DRIVERS}", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "externalwifi", "${EXTERNAL_WIFI_DRIVERS}", "", d)} \
	${@bb.utils.contains("MACHINE_FEATURES", "smallflash", "", " \
	astra-sm \
	busybox-cron \
	${@bb.utils.contains('MACHINE_FEATURES', 'dvd', 'cdtextinfo', '', d)} \
	${@bb.utils.contains('OPENPLI_FEATURES', 'dvd', 'cdtextinfo', '', d)} \
	curl \
	dvbsnoop \
	hddtemp \
	fuse-exfat \
	libbluray \
	nfs-utils \
	ntp \
	ntfs-3g \
	openssh-sftp-server \
	python-imaging \
	samba-base \
	${@bb.utils.contains('MACHINE_FEATURES', 'streamproxy', 'streamproxy', '', d)} \
	wscan", d)} \
	"

export IMAGE_BASENAME = "openvision-enigma2"
