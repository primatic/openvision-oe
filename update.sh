#!/bin/sh
echo ""
echo "Open Vision by"
echo "https://github.com/orgs/PLi-metas/people"
echo ""
echo "Each time you run this script all git repositories will get updated to their latest versions!"
echo ""
echo "For extra RC support you need to add your STB files to https://github.com/PLi-metas/extra_rc_models"
echo ""
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "${SCRIPTPATH}"
git pull
git submodule sync
git submodule update --init --depth 1
METAS="$( ls | grep meta- | tr '\n' ' ' | sed 's/ $//g' )"
cd ..
find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/DISTRO = "openpli"/DISTRO = "openvision"/g' {} \;
find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/openpli.conf/openvision.conf/g' {} \;
echo ""
echo "Check for dm7020hdv2 required changes ..."
if grep -Fqi "DMTYPE" Makefile
then
    echo ""
    echo "No need to modify Makefile."
    echo "You can compile dm7020hdv2 image too."
    echo ""
else
    echo ""
    echo "We need to modify Makefile ..."
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/$(MACHINE)/$(MACHINE)$(DMTYPE)/g' {} \;
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i 's/"MACHINE"/"MACHINE DMTYPE"/g' {} \;
    find -maxdepth 1 -name "Makefile" -type f -exec sed -i "s/.@echo 'export MACHINE' >> $@.*/&\n\t@echo 'export DMTYPE' >> \$\@/" {} \;
    cat pli-extras/Makefile-dm7020hdv2 >> Makefile
    rm -f build/env.source
    echo "Done, now you can compile dm7020hdv2 image too."
    echo ""
fi
# Regenerate bblayers.conf so we can add our own
rm -f build/conf/bblayers.conf
make init update
# Remove existing meta-dream from bblayers.conf
sed -i "s# $(pwd)/meta-dream##g" build/conf/bblayers.conf
for i in ${METAS}
do
    echo "BBLAYERS_append = \" ${SCRIPTPATH}/${i}\"" >> build/conf/bblayers.conf
done
echo "BBLAYERS_append = \" ${SCRIPTPATH}\"" >> build/conf/bblayers.conf
rm -rf meta-openpli/recipes-extended/tzdata
