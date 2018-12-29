#!/bin/sh
echo -e ""
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
echo -e "Welcome to Persian Prince's image compile script!"
echo -e "Check README.md and enter a meta or a specific machine to compile."
echo -e "Answers are in green:"
echo -e ""
echo -e "${GREEN}AX ${NC}- ${GREEN}AZBox ${NC}- ${GREEN}BlackBox ${NC}- ${GREEN}BroadMedia ${NC}- ${GREEN}Ceryon ${NC}- ${GREEN}Clap"
echo -e "${GREEN}Cube ${NC}- ${GREEN}DAGS ${NC}- ${GREEN}Dinobot ${NC}- ${GREEN}Dreambox ${NC}- ${GREEN}EBox ${NC}- ${GREEN}Entwopia"
echo -e "${GREEN}Fulan ${NC}- ${GREEN}GB ${NC}- ${GREEN}HyperCube ${NC}- ${GREEN}INI ${NC}- ${GREEN}IXUSS ${NC}- ${GREEN}Linkdroid"
echo -e "${GREEN}MINIX ${NC}- ${GREEN}Octagon ${NC}- ${GREEN}Odin ${NC}- ${GREEN}Odroid ${NC}- ${GREEN}Protek ${NC}- ${GREEN}RaspberryPi"
echo -e "${GREEN}Tiviar ${NC}- ${GREEN}Tripledot ${NC}- ${GREEN}Uclan ${NC}- ${GREEN}WeTek ${NC}- ${GREEN}XCore ${NC}- ${GREEN}XT"
echo -e "${GREEN}ALL ${NC}(Compiles all brands/models, As it requires huge free space it's not recommended)"
echo -e "${GREEN}Specific ${NC}(I have a specific machine in mind)"
echo -e ""
echo -e "Enter the meta name:"
echo -e ""
read META
echo -e ""
if [ $META != "AX" -a $META != "AZBox" -a $META != "BlackBox" -a $META != "BroadMedia" -a $META != "Ceryon" -a $META != "Clap" -a $META != "Cube" -a $META != "DAGS" -a $META != "Dinobot" -a $META != "Dreambox" -a $META != "EBox" -a $META != "Entwopia" -a $META != "Fulan" -a $META != "GB" -a $META != "HyperCube" -a $META != "INI" -a $META != "IXUSS" -a $META != "Linkdroid" -a $META != "MINIX" -a $META != "Octagon" -a $META != "Odin" -a $META != "Odroid" -a $META != "Protek" -a $META != "RaspberryPi" -a $META != "Tiviar" -a $META != "Tripledot" -a $META != "Uclan" -a $META != "WeTek" -a $META != "XCore" -a $META != "XT" -a $META != "ALL" -a $META != "Specific" ]
then
	echo -e "Not a valid answer!"
	echo -e ""
	exit 0
fi
echo -e "Now choose whether you want to compile Open Vision or the online feeds."
echo -e "Answers are in red:"
echo -e ""
echo -e "${RED}Vision"
echo -e "${RED}Feed"
echo -e ""
echo -e "${NC}Enter image type:"
echo -e ""
read IMAGETYPE
echo -e ""
if [ $IMAGETYPE != "Vision" -a $IMAGETYPE != "Feed" ]
then
	echo -e "Not a valid answer!"
	echo -e ""
	exit 0
fi
echo -e "First update everything, please wait ..."
/bin/sh update.sh
echo -e ""
echo -e "Updated."
echo -e ""
echo -e "Compiling $META images, please wait ..."
echo -e ""
cd ..
if [ $IMAGETYPE = "Vision" ]
then
	IMAGECMD='make image'
fi
if [ $IMAGETYPE = "Feed" ]
then
	IMAGECMD='make feed'
fi
if [ $META = "Specific" ]
then
	echo -e "Enter your specific machine name exactly like what you see in README.md"
	echo -e ""
	read MACHINESPECIFIC
	echo -e ""
	echo -e "Compiling $MACHINESPECIFIC image, please wait ..."
	echo -e ""
	MACHINE=$MACHINESPECIFIC $IMAGECMD
fi
if [ $META = "AX" ]
then
	MACHINE=triplex $IMAGECMD
	MACHINE=ultrabox $IMAGECMD
fi
if [ $META = "AZBox" ]
then
	MACHINE=azboxhd $IMAGECMD
	MACHINE=azboxme $IMAGECMD
	MACHINE=azboxminime $IMAGECMD
fi
if [ $META = "BlackBox" ]
then
	MACHINE=sogno8800hd $IMAGECMD
	MACHINE=uniboxhde $IMAGECMD
fi
if [ $META = "BroadMedia" ]
then
	MACHINE=bre2zet2c $IMAGECMD
	MACHINE=sf128 $IMAGECMD
	MACHINE=sf138 $IMAGECMD
	MACHINE=sf3038 $IMAGECMD
fi
if [ $META = "Ceryon" ]
then
	MACHINE=9910lx $IMAGECMD
	MACHINE=9911lx $IMAGECMD
	MACHINE=9920lx $IMAGECMD
	MACHINE=e4hd $IMAGECMD
	MACHINE=e4hdcombo $IMAGECMD
	MACHINE=e4hdhybrid $IMAGECMD
	MACHINE=odin2hybrid $IMAGECMD
	MACHINE=odinplus $IMAGECMD
	MACHINE=protek4k $IMAGECMD
	MACHINE=sf208 $IMAGECMD
	MACHINE=sf228 $IMAGECMD
	MACHINE=sf238 $IMAGECMD
	MACHINE=singleboxlcd $IMAGECMD
	MACHINE=twinboxlcd $IMAGECMD
	MACHINE=twinboxlcdci5 $IMAGECMD
fi
if [ $META = "Clap" ]
then
	MACHINE=cc1 $IMAGECMD
fi
if [ $META = "Cube" ]
then
	MACHINE=cube $IMAGECMD
fi
if [ $META = "DAGS" ]
then
	MACHINE=force1 $IMAGECMD
	MACHINE=force1plus $IMAGECMD
	MACHINE=force2 $IMAGECMD
	MACHINE=force2nano $IMAGECMD
	MACHINE=force2plus $IMAGECMD
	MACHINE=force2plushv $IMAGECMD
	MACHINE=force2se $IMAGECMD
	MACHINE=force3uhd $IMAGECMD
	MACHINE=force3uhdplus $IMAGECMD
	MACHINE=force4 $IMAGECMD
	MACHINE=iqonios100hd $IMAGECMD
	MACHINE=iqonios200hd $IMAGECMD
	MACHINE=iqonios300hd $IMAGECMD
	MACHINE=iqonios300hdv2 $IMAGECMD
	MACHINE=mediabox $IMAGECMD
	MACHINE=optimussos $IMAGECMD
	MACHINE=optimussos1 $IMAGECMD
	MACHINE=optimussos1plus $IMAGECMD
	MACHINE=optimussos2 $IMAGECMD
	MACHINE=optimussos2plus $IMAGECMD
	MACHINE=optimussos3plus $IMAGECMD
	MACHINE=tm2t $IMAGECMD
	MACHINE=tm4ksuper $IMAGECMD
	MACHINE=tmnano $IMAGECMD
	MACHINE=tmnano2super $IMAGECMD
	MACHINE=tmnano2t $IMAGECMD
	MACHINE=tmnano3t $IMAGECMD
	MACHINE=tmnanom3 $IMAGECMD
	MACHINE=tmnanose $IMAGECMD
	MACHINE=tmnanosecombo $IMAGECMD
	MACHINE=tmnanosem2 $IMAGECMD
	MACHINE=tmnanoseplus $IMAGECMD
	MACHINE=tmsingle $IMAGECMD
	MACHINE=tmtwin $IMAGECMD
	MACHINE=tmtwin4k $IMAGECMD
	MACHINE=valalinux $IMAGECMD
	MACHINE=worldvisionf1 $IMAGECMD
	MACHINE=worldvisionf1plus $IMAGECMD
fi
if [ $META = "Dinobot" ]
then
	MACHINE=anadol4k $IMAGECMD
	MACHINE=anadol4kcombo $IMAGECMD
	MACHINE=anadol4kv2 $IMAGECMD
	MACHINE=axashis4kcombo $IMAGECMD
	MACHINE=axashis4kcomboplus $IMAGECMD
	MACHINE=dinobot4k $IMAGECMD
	MACHINE=dinobot4kl $IMAGECMD
	MACHINE=dinobot4kmini $IMAGECMD
	MACHINE=dinobot4kplus $IMAGECMD
	MACHINE=dinobot4kpro $IMAGECMD
	MACHINE=dinobot4kse $IMAGECMD
	MACHINE=ferguson4k $IMAGECMD
	MACHINE=mediabox4k $IMAGECMD
fi
if [ $META = "Dreambox" ]
then
	MACHINE=dm500hd $IMAGECMD
	MACHINE=dm500hdv2 $IMAGECMD
	MACHINE=dm520 $IMAGECMD
	MACHINE=dm7020hd $IMAGECMD
	MACHINE=dm7020hdv2 $IMAGECMD
	MACHINE=dm7080 $IMAGECMD
	MACHINE=dm800 $IMAGECMD
	MACHINE=dm8000 $IMAGECMD
	MACHINE=dm800se $IMAGECMD
	MACHINE=dm800sev2 $IMAGECMD
	MACHINE=dm820 $IMAGECMD
	MACHINE=dm900 $IMAGECMD
	MACHINE=dm920 $IMAGECMD
fi
if [ $META = "EBox" ]
then
	MACHINE=ebox5000 $IMAGECMD
	MACHINE=ebox5100 $IMAGECMD
	MACHINE=ebox7358 $IMAGECMD
	MACHINE=eboxlumi $IMAGECMD
fi
if [ $META = "Entwopia" ]
then
	MACHINE=bre2ze $IMAGECMD
	MACHINE=enfinity $IMAGECMD
	MACHINE=evomini $IMAGECMD
	MACHINE=evominiplus $IMAGECMD
	MACHINE=marvel1 $IMAGECMD
	MACHINE=x2plus $IMAGECMD
fi
if [ $META = "Fulan" ]
then
	MACHINE=adb_box $IMAGECMD
	MACHINE=arivalink200 $IMAGECMD
	MACHINE=atemio520 $IMAGECMD
	MACHINE=atemio530 $IMAGECMD
	MACHINE=atevio7500 $IMAGECMD
	MACHINE=cuberevo $IMAGECMD
	MACHINE=cuberevo_2000hd $IMAGECMD
	MACHINE=cuberevo_250hd $IMAGECMD
	MACHINE=cuberevo_3000hd $IMAGECMD
	MACHINE=cuberevo_mini $IMAGECMD
	MACHINE=cuberevo_mini2 $IMAGECMD
	MACHINE=fortis_hdbox $IMAGECMD
	MACHINE=hl101 $IMAGECMD
	MACHINE=hs7110 $IMAGECMD
	MACHINE=hs7119 $IMAGECMD
	MACHINE=hs7420 $IMAGECMD
	MACHINE=hs7429 $IMAGECMD
	MACHINE=hs7810a $IMAGECMD
	MACHINE=hs7819 $IMAGECMD
	MACHINE=ipbox55 $IMAGECMD
	MACHINE=ipbox99 $IMAGECMD
	MACHINE=ipbox9900 $IMAGECMD
	MACHINE=octagon1008 $IMAGECMD
	MACHINE=sagemcom88 $IMAGECMD
	MACHINE=spark $IMAGECMD
	MACHINE=spark7162 $IMAGECMD
	MACHINE=tf7700 $IMAGECMD
	MACHINE=ufc960 $IMAGECMD
	MACHINE=ufs910 $IMAGECMD
	MACHINE=ufs912 $IMAGECMD
	MACHINE=ufs913 $IMAGECMD
	MACHINE=ufs922 $IMAGECMD
	MACHINE=vitamin_hd5000 $IMAGECMD
fi
if [ $META = "GB" ]
then
	MACHINE=gb800se $IMAGECMD
	MACHINE=gb800seplus $IMAGECMD
	MACHINE=gb800solo $IMAGECMD
	MACHINE=gb800ue $IMAGECMD
	MACHINE=gb800ueplus $IMAGECMD
	MACHINE=gbipbox $IMAGECMD
	MACHINE=gbquad $IMAGECMD
	MACHINE=gbquadplus $IMAGECMD
	MACHINE=gbultrase $IMAGECMD
	MACHINE=gbultraue $IMAGECMD
	MACHINE=gbultraueh $IMAGECMD
	MACHINE=gbx1 $IMAGECMD
	MACHINE=gbx2 $IMAGECMD
	MACHINE=gbx3 $IMAGECMD
	MACHINE=gbx3h $IMAGECMD
fi
if [ $META = "HyperCube" ]
then
	MACHINE=su980 $IMAGECMD
fi
if [ $META = "INI" ]
then
	MACHINE=atemio5x00 $IMAGECMD
	MACHINE=atemio6000 $IMAGECMD
	MACHINE=atemio6100 $IMAGECMD
	MACHINE=atemio6200 $IMAGECMD
	MACHINE=atemionemesis $IMAGECMD
	MACHINE=beyonwizt2 $IMAGECMD
	MACHINE=beyonwizt3 $IMAGECMD
	MACHINE=beyonwizt4 $IMAGECMD
	MACHINE=bwidowx $IMAGECMD
	MACHINE=bwidowx2 $IMAGECMD
	MACHINE=evoslim $IMAGECMD
	MACHINE=mbhybrid $IMAGECMD
	MACHINE=mbmini $IMAGECMD
	MACHINE=mbminiplus $IMAGECMD
	MACHINE=mbtwin $IMAGECMD
	MACHINE=mbultra $IMAGECMD
	MACHINE=opticumtt $IMAGECMD
	MACHINE=sezam1000hd $IMAGECMD
	MACHINE=sezam5000hd $IMAGECMD
	MACHINE=sezammarvel $IMAGECMD
	MACHINE=ventonhdx $IMAGECMD
	MACHINE=xpeedlx $IMAGECMD
	MACHINE=xpeedlx3 $IMAGECMD
fi
if [ $META = "IXUSS" ]
then
	MACHINE=ixussone $IMAGECMD
	MACHINE=ixusszero $IMAGECMD
fi
if [ $META = "Linkdroid" ]
then
	MACHINE=alien5 $IMAGECMD
	MACHINE=k1plus $IMAGECMD
	MACHINE=k1pro $IMAGECMD
	MACHINE=k2pro $IMAGECMD
	MACHINE=k2prov2 $IMAGECMD
	MACHINE=k3pro $IMAGECMD
fi
if [ $META = "MINIX" ]
then
	MACHINE=x8hp $IMAGECMD
fi
if [ $META = "Octagon" ]
then
	MACHINE=sf4008 $IMAGECMD
	MACHINE=sf5008 $IMAGECMD
	MACHINE=sf8008 $IMAGECMD
fi
if [ $META = "Odin" ]
then
	MACHINE=axase3 $IMAGECMD
	MACHINE=axase3c $IMAGECMD
	MACHINE=axodin $IMAGECMD
	MACHINE=axodinc $IMAGECMD
	MACHINE=classm $IMAGECMD
	MACHINE=evo $IMAGECMD
	MACHINE=evoe3hd $IMAGECMD
	MACHINE=galaxym6 $IMAGECMD
	MACHINE=genius $IMAGECMD
	MACHINE=geniuse3hd $IMAGECMD
	MACHINE=maram9 $IMAGECMD
	MACHINE=starsatlx $IMAGECMD
fi
if [ $META = "Odroid" ]
then
	MACHINE=odroidc2 $IMAGECMD
fi
if [ $META = "Protek" ]
then
	MACHINE=9900lx $IMAGECMD
fi
if [ $META = "RaspberryPi" ]
then
	MACHINE=raspberrypi $IMAGECMD
	MACHINE=raspberrypi0 $IMAGECMD
	MACHINE=raspberrypi2 $IMAGECMD
	MACHINE=raspberrypi3 $IMAGECMD
fi
if [ $META = "Tiviar" ]
then
	MACHINE=tiviaraplus $IMAGECMD
	MACHINE=tiviarmin $IMAGECMD
fi
if [ $META = "Tripledot" ]
then
	MACHINE=enibox $IMAGECMD
	MACHINE=evoslimse $IMAGECMD
	MACHINE=evoslimt2c $IMAGECMD
	MACHINE=mago $IMAGECMD
	MACHINE=sf108 $IMAGECMD
	MACHINE=sf98 $IMAGECMD
	MACHINE=t2cable $IMAGECMD
	MACHINE=tyrant $IMAGECMD
	MACHINE=x1plus $IMAGECMD
	MACHINE=xcombo $IMAGECMD
fi
if [ $META = "Uclan" ]
then
	MACHINE=ustym4kpro $IMAGECMD
fi
if [ $META = "WeTek" ]
then
	MACHINE=wetekhub $IMAGECMD
	MACHINE=wetekplay $IMAGECMD
	MACHINE=wetekplay2 $IMAGECMD
fi
if [ $META = "XCore" ]
then
	MACHINE=bcm7358 $IMAGECMD
	MACHINE=spycat4k $IMAGECMD
	MACHINE=spycat4kcombo $IMAGECMD
	MACHINE=spycat4kmini $IMAGECMD
	MACHINE=vp7358ci $IMAGECMD
fi
if [ $META = "XT" ]
then
	MACHINE=beyonwizu4 $IMAGECMD
	MACHINE=et13000 $IMAGECMD
fi
if [ $META = "ALL" ]
then
	MACHINE=triplex $IMAGECMD
	MACHINE=ultrabox $IMAGECMD
	MACHINE=azboxhd $IMAGECMD
	MACHINE=azboxme $IMAGECMD
	MACHINE=azboxminime $IMAGECMD
	MACHINE=sogno8800hd $IMAGECMD
	MACHINE=uniboxhde $IMAGECMD
	MACHINE=bre2zet2c $IMAGECMD
	MACHINE=sf128 $IMAGECMD
	MACHINE=sf138 $IMAGECMD
	MACHINE=sf3038 $IMAGECMD
	MACHINE=9910lx $IMAGECMD
	MACHINE=9911lx $IMAGECMD
	MACHINE=9920lx $IMAGECMD
	MACHINE=e4hd $IMAGECMD
	MACHINE=e4hdcombo $IMAGECMD
	MACHINE=e4hdhybrid $IMAGECMD
	MACHINE=odin2hybrid $IMAGECMD
	MACHINE=odinplus $IMAGECMD
	MACHINE=protek4k $IMAGECMD
	MACHINE=sf208 $IMAGECMD
	MACHINE=sf228 $IMAGECMD
	MACHINE=sf238 $IMAGECMD
	MACHINE=singleboxlcd $IMAGECMD
	MACHINE=twinboxlcd $IMAGECMD
	MACHINE=twinboxlcdci5 $IMAGECMD
	MACHINE=cc1 $IMAGECMD
	MACHINE=cube $IMAGECMD
	MACHINE=force1 $IMAGECMD
	MACHINE=force1plus $IMAGECMD
	MACHINE=force2 $IMAGECMD
	MACHINE=force2nano $IMAGECMD
	MACHINE=force2plus $IMAGECMD
	MACHINE=force2plushv $IMAGECMD
	MACHINE=force2se $IMAGECMD
	MACHINE=force3uhd $IMAGECMD
	MACHINE=force3uhdplus $IMAGECMD
	MACHINE=force4 $IMAGECMD
	MACHINE=iqonios100hd $IMAGECMD
	MACHINE=iqonios200hd $IMAGECMD
	MACHINE=iqonios300hd $IMAGECMD
	MACHINE=iqonios300hdv2 $IMAGECMD
	MACHINE=mediabox $IMAGECMD
	MACHINE=optimussos $IMAGECMD
	MACHINE=optimussos1 $IMAGECMD
	MACHINE=optimussos1plus $IMAGECMD
	MACHINE=optimussos2 $IMAGECMD
	MACHINE=optimussos2plus $IMAGECMD
	MACHINE=optimussos3plus $IMAGECMD
	MACHINE=tm2t $IMAGECMD
	MACHINE=tm4ksuper $IMAGECMD
	MACHINE=tmnano $IMAGECMD
	MACHINE=tmnano2super $IMAGECMD
	MACHINE=tmnano2t $IMAGECMD
	MACHINE=tmnano3t $IMAGECMD
	MACHINE=tmnanom3 $IMAGECMD
	MACHINE=tmnanose $IMAGECMD
	MACHINE=tmnanosecombo $IMAGECMD
	MACHINE=tmnanosem2 $IMAGECMD
	MACHINE=tmnanoseplus $IMAGECMD
	MACHINE=tmsingle $IMAGECMD
	MACHINE=tmtwin $IMAGECMD
	MACHINE=tmtwin4k $IMAGECMD
	MACHINE=valalinux $IMAGECMD
	MACHINE=worldvisionf1 $IMAGECMD
	MACHINE=worldvisionf1plus $IMAGECMD
	MACHINE=anadol4k $IMAGECMD
	MACHINE=anadol4kcombo $IMAGECMD
	MACHINE=anadol4kv2 $IMAGECMD
	MACHINE=axashis4kcombo $IMAGECMD
	MACHINE=axashis4kcomboplus $IMAGECMD
	MACHINE=dinobot4k $IMAGECMD
	MACHINE=dinobot4kl $IMAGECMD
	MACHINE=dinobot4kmini $IMAGECMD
	MACHINE=dinobot4kplus $IMAGECMD
	MACHINE=dinobot4kpro $IMAGECMD
	MACHINE=dinobot4kse $IMAGECMD
	MACHINE=ferguson4k $IMAGECMD
	MACHINE=mediabox4k $IMAGECMD
	MACHINE=dm500hd $IMAGECMD
	MACHINE=dm500hdv2 $IMAGECMD
	MACHINE=dm520 $IMAGECMD
	MACHINE=dm7020hd $IMAGECMD
	MACHINE=dm7020hdv2 $IMAGECMD
	MACHINE=dm7080 $IMAGECMD
	MACHINE=dm800 $IMAGECMD
	MACHINE=dm8000 $IMAGECMD
	MACHINE=dm800se $IMAGECMD
	MACHINE=dm800sev2 $IMAGECMD
	MACHINE=dm820 $IMAGECMD
	MACHINE=dm900 $IMAGECMD
	MACHINE=dm920 $IMAGECMD
	MACHINE=ebox5000 $IMAGECMD
	MACHINE=ebox5100 $IMAGECMD
	MACHINE=ebox7358 $IMAGECMD
	MACHINE=eboxlumi $IMAGECMD
	MACHINE=bre2ze $IMAGECMD
	MACHINE=enfinity $IMAGECMD
	MACHINE=evomini $IMAGECMD
	MACHINE=evominiplus $IMAGECMD
	MACHINE=marvel1 $IMAGECMD
	MACHINE=x2plus $IMAGECMD
	MACHINE=adb_box $IMAGECMD
	MACHINE=arivalink200 $IMAGECMD
	MACHINE=atemio520 $IMAGECMD
	MACHINE=atemio530 $IMAGECMD
	MACHINE=atevio7500 $IMAGECMD
	MACHINE=cuberevo $IMAGECMD
	MACHINE=cuberevo_2000hd $IMAGECMD
	MACHINE=cuberevo_250hd $IMAGECMD
	MACHINE=cuberevo_3000hd $IMAGECMD
	MACHINE=cuberevo_mini $IMAGECMD
	MACHINE=cuberevo_mini2 $IMAGECMD
	MACHINE=fortis_hdbox $IMAGECMD
	MACHINE=hl101 $IMAGECMD
	MACHINE=hs7110 $IMAGECMD
	MACHINE=hs7119 $IMAGECMD
	MACHINE=hs7420 $IMAGECMD
	MACHINE=hs7429 $IMAGECMD
	MACHINE=hs7810a $IMAGECMD
	MACHINE=hs7819 $IMAGECMD
	MACHINE=ipbox55 $IMAGECMD
	MACHINE=ipbox99 $IMAGECMD
	MACHINE=ipbox9900 $IMAGECMD
	MACHINE=octagon1008 $IMAGECMD
	MACHINE=sagemcom88 $IMAGECMD
	MACHINE=spark $IMAGECMD
	MACHINE=spark7162 $IMAGECMD
	MACHINE=tf7700 $IMAGECMD
	MACHINE=ufc960 $IMAGECMD
	MACHINE=ufs910 $IMAGECMD
	MACHINE=ufs912 $IMAGECMD
	MACHINE=ufs913 $IMAGECMD
	MACHINE=ufs922 $IMAGECMD
	MACHINE=vitamin_hd5000 $IMAGECMD
	MACHINE=gb800se $IMAGECMD
	MACHINE=gb800seplus $IMAGECMD
	MACHINE=gb800solo $IMAGECMD
	MACHINE=gb800ue $IMAGECMD
	MACHINE=gb800ueplus $IMAGECMD
	MACHINE=gbipbox $IMAGECMD
	MACHINE=gbquad $IMAGECMD
	MACHINE=gbquadplus $IMAGECMD
	MACHINE=gbultrase $IMAGECMD
	MACHINE=gbultraue $IMAGECMD
	MACHINE=gbultraueh $IMAGECMD
	MACHINE=gbx1 $IMAGECMD
	MACHINE=gbx2 $IMAGECMD
	MACHINE=gbx3 $IMAGECMD
	MACHINE=gbx3h $IMAGECMD
	MACHINE=su980 $IMAGECMD
	MACHINE=atemio5x00 $IMAGECMD
	MACHINE=atemio6000 $IMAGECMD
	MACHINE=atemio6100 $IMAGECMD
	MACHINE=atemio6200 $IMAGECMD
	MACHINE=atemionemesis $IMAGECMD
	MACHINE=beyonwizt2 $IMAGECMD
	MACHINE=beyonwizt3 $IMAGECMD
	MACHINE=beyonwizt4 $IMAGECMD
	MACHINE=bwidowx $IMAGECMD
	MACHINE=bwidowx2 $IMAGECMD
	MACHINE=evoslim $IMAGECMD
	MACHINE=mbhybrid $IMAGECMD
	MACHINE=mbmini $IMAGECMD
	MACHINE=mbminiplus $IMAGECMD
	MACHINE=mbtwin $IMAGECMD
	MACHINE=mbultra $IMAGECMD
	MACHINE=opticumtt $IMAGECMD
	MACHINE=sezam1000hd $IMAGECMD
	MACHINE=sezam5000hd $IMAGECMD
	MACHINE=sezammarvel $IMAGECMD
	MACHINE=ventonhdx $IMAGECMD
	MACHINE=xpeedlx $IMAGECMD
	MACHINE=xpeedlx3 $IMAGECMD
	MACHINE=ixussone $IMAGECMD
	MACHINE=ixusszero $IMAGECMD
	MACHINE=alien5 $IMAGECMD
	MACHINE=k1plus $IMAGECMD
	MACHINE=k1pro $IMAGECMD
	MACHINE=k2pro $IMAGECMD
	MACHINE=k2prov2 $IMAGECMD
	MACHINE=k3pro $IMAGECMD
	MACHINE=x8hp $IMAGECMD
	MACHINE=sf4008 $IMAGECMD
	MACHINE=sf5008 $IMAGECMD
	MACHINE=sf8008 $IMAGECMD
	MACHINE=axase3 $IMAGECMD
	MACHINE=axase3c $IMAGECMD
	MACHINE=axodin $IMAGECMD
	MACHINE=axodinc $IMAGECMD
	MACHINE=classm $IMAGECMD
	MACHINE=evo $IMAGECMD
	MACHINE=evoe3hd $IMAGECMD
	MACHINE=galaxym6 $IMAGECMD
	MACHINE=genius $IMAGECMD
	MACHINE=geniuse3hd $IMAGECMD
	MACHINE=maram9 $IMAGECMD
	MACHINE=starsatlx $IMAGECMD
	MACHINE=odroidc2 $IMAGECMD
	MACHINE=9900lx $IMAGECMD
	MACHINE=raspberrypi $IMAGECMD
	MACHINE=raspberrypi0 $IMAGECMD
	MACHINE=raspberrypi2 $IMAGECMD
	MACHINE=raspberrypi3 $IMAGECMD
	MACHINE=tiviaraplus $IMAGECMD
	MACHINE=tiviarmin $IMAGECMD
	MACHINE=enibox $IMAGECMD
	MACHINE=evoslimse $IMAGECMD
	MACHINE=evoslimt2c $IMAGECMD
	MACHINE=mago $IMAGECMD
	MACHINE=sf108 $IMAGECMD
	MACHINE=sf98 $IMAGECMD
	MACHINE=t2cable $IMAGECMD
	MACHINE=tyrant $IMAGECMD
	MACHINE=x1plus $IMAGECMD
	MACHINE=xcombo $IMAGECMD
	MACHINE=ustym4kpro $IMAGECMD
	MACHINE=wetekhub $IMAGECMD
	MACHINE=wetekplay $IMAGECMD
	MACHINE=wetekplay2 $IMAGECMD
	MACHINE=bcm7358 $IMAGECMD
	MACHINE=spycat4k $IMAGECMD
	MACHINE=spycat4kcombo $IMAGECMD
	MACHINE=spycat4kmini $IMAGECMD
	MACHINE=vp7358ci $IMAGECMD
	MACHINE=beyonwizu4 $IMAGECMD
	MACHINE=et13000 $IMAGECMD
fi
echo -e ""
echo -e "Done."
