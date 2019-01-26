#!/bin/sh
echo ""
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
echo "Welcome to Open Vision's OE cleanup script!"
echo "After using this script the size of the build folder will be reduced."
echo -e "Check ${RED}README.md ${NC}or ${RED}PLi-metas.md ${NC}and enter a specific machine to cleanup:"
echo ""
echo -e "${GREEN}"
read MACHINE
echo -e "${NC}"
echo ""
echo -e "Removing ${GREEN}$MACHINE${NC} build folders, please wait ..."
cd ..
echo ""
rm -rf build/tmp/buildstats/*
echo ""
echo "buildstats cleaned!"
echo ""
rm -rf build/tmp/cache/default-glibc/$MACHINE
echo ""
echo "cache/default-glibc cleaned!"
echo ""
rm -rf build/tmp/deploy/ipk/$MACHINE
echo ""
echo "deploy/ipk cleaned!"
echo ""
rm -rf build/tmp/deploy/images/$MACHINE
echo ""
echo "deploy/images cleaned!"
echo ""
rm -rf build/tmp/log/cooker/$MACHINE
echo ""
echo "log/cooker cleaned!"
echo ""
rm -rf build/tmp/pkgdata/$MACHINE
echo ""
echo "pkgdata cleaned!"
echo ""
rm -rf build/tmp/sstate-control/*$MACHINE*
echo ""
echo "sstate-control cleaned!"
echo ""
rm -rf build/tmp/stamps/$MACHINE-oe-linu*
echo ""
echo "stamps cleaned!"
echo ""
cd build/tmp/stamps
find -name "*.$MACHINE" -type f -exec rm -f {} \;
cd ..
cd ..
cd ..
echo ""
echo "packagedata_setscene cleaned!"
echo ""
rm -rf build/tmp/sysroots-components/$MACHINE
echo ""
echo "sysroots-components cleaned!"
echo ""
rm -rf build/tmp/work/$MACHINE-oe-linu*
echo ""
echo "work cleaned!"
echo ""
cd build/tmp/work
find \( -iname \*_$MACHINE_*.adb -o -iname \*_$MACHINE_*.ads \) -type f -exec rm -f {} \;
cd ..
cd ..
cd ..
echo ""
echo "work's adb ads files cleaned!"
echo ""
rm -rf build/tmp/work-shared/$MACHINE
echo ""
echo "work-shared cleaned!"
echo ""
cd build/tmp/work-shared
find \( -iname \*_$MACHINE_*.adb -o -iname \*_$MACHINE_*.ads \) -type f -exec rm -f {} \;
cd ..
cd ..
cd ..
echo ""
echo "work-shared's adb ads files cleaned!"
echo ""
echo "Done."
