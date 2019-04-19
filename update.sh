#!/bin/sh
echo ""
if [ $# -eq 0 ]
then
	BUILDDIR="build"
else
	BUILDDIR="$1"
fi
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
echo "Open Vision by"
echo "https://github.com/orgs/OpenVisionE2/people"
echo ""
echo "Each time you run this script all git repositories will get updated to their latest versions!"
echo ""
echo "For extra RC support you need to add your STB files to https://github.com/OpenVisionE2/extra_rc_models"
echo ""
echo -e "${RED}Is there a merge conflict with PLi's repos?"
echo -e "Answers are in ${GREEN}green:${NC}"
echo -e ""
echo -e "${GREEN}No ${NC}- ${GREEN}Yes"
echo -e ""
echo -e "${RED}Enter conflict mode:${NC}"
echo -e "${GREEN}"
read CONFLICTMODE
echo -e "${NC}"
if [ $CONFLICTMODE != "Yes" -a $CONFLICTMODE != "No" ]
then
	echo -e "${RED}Not a valid answer!${NC}"
	echo -e ""
	exit 0
fi
echo -e "${RED}Updating from git, please wait ...${NC}"
echo ""
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "${SCRIPTPATH}"
git pull
git submodule sync
git submodule update --init
echo ""
echo -e "${RED}Done!${NC}"
echo ""
METAS="$( ls | grep meta- | tr '\n' ' ' | sed 's/ $//g' )"
rm -rf meta-maxytec
cd ..
if [ $CONFLICTMODE = "No" ]
then
	# Lets restore Makefile first in case OpenPLi update it
	git checkout Makefile
	git pull
fi
if [ $CONFLICTMODE = "Yes" ]
then
	# Lets restore everything first in case OpenPLi update it
	git checkout .
	# Clear the modifications we've done to the submodules before updating
	git submodule foreach git checkout .
	git pull --rebase
fi
sed -i "s#BUILD_DIR = \$(CURDIR)/.*#BUILD_DIR = \$(CURDIR)/${BUILDDIR}#g" Makefile
find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/DISTRO = "openpli"/DISTRO = "openvision"/g' {} \;
find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/openpli.conf/openvision.conf/g' {} \;
find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/bitbake openpli/bitbake openvision/g' {} \;
echo ""
echo -e "${RED}Check for dm7020hdv2 required changes ...${NC}"
if grep -Fqi "DMTYPE" Makefile
then
    echo ""
    echo -e "${RED}No need to modify Makefile."
    echo -e "You can compile dm7020hdv2 image too.${NC}"
    echo ""
else
    echo ""
    echo -e "${RED}We need to modify Makefile ...${NC}"
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/$(MACHINE)/$(MACHINE)$(DMTYPE)/g' {} \;
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/"MACHINE"/"MACHINE DMTYPE"/g' {} \;
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i "s/.@echo 'export MACHINE' >> $@.*/&\n\t@echo 'export DMTYPE' >> \$\@/" {} \;
    cat openvision-oe/dm7020hdv2-changes >> Makefile
    rm -f ${BUILDDIR}/env.source
    echo -e "${RED}Done, now you can compile dm7020hdv2 image too.${NC}"
    echo ""
fi
# Regenerate bblayers.conf so we can add our own
rm -f ${BUILDDIR}/conf/bblayers.conf
make init update
echo ""
echo -e "${RED}Let us fix the image names ...${NC}"
echo ""
find -maxdepth 1 -name "meta-a*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-e*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-f*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-g*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-m*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-qv*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-s*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-v*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-x*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
find -maxdepth 1 -name "meta-z*" -type d -exec find {} -type f \( -iname \*.conf -o -iname \*.inc \) \; | xargs -L1 sed -i 's|${DISTRO_NAME}-${DISTRO_VERSION}-${MACHINE}|${IMAGE_NAME}|g'
echo -e "${RED}Done!${NC}"
# Remove existing meta-dream and meta-axasuhd from bblayers.conf
sed -i "s# $(pwd)/meta-dream##g" ${BUILDDIR}/conf/bblayers.conf
sed -i "s# $(pwd)/meta-axasuhd##g" ${BUILDDIR}/conf/bblayers.conf
for i in ${METAS}
do
    echo "BBLAYERS_append = \" ${SCRIPTPATH}/${i}\"" >> ${BUILDDIR}/conf/bblayers.conf
done
echo "BBLAYERS_append = \" ${SCRIPTPATH}\"" >> ${BUILDDIR}/conf/bblayers.conf
rm -rf meta-openpli/recipes-extended/tzdata
rm -rf meta-openpli/recipes-openpli/enigma2-plugins/enigma2-plugin-extensions-dlnabrowser.bb
rm -rf meta-openpli/recipes-openpli/enigma2-plugins/enigma2-plugin-extensions-dlnaserver.bb
rm -rf meta-openpli/recipes-openpli/enigma2-plugins/enigma2-plugin-extensions-lcd4linux.bb
