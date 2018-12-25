# Open Vision enigma2 images based on Open PLi sources

# AX
* triplex
* ultrabox

# AZBox
* azboxhd
* azboxme
* azboxminime

# BlackBox
* sogno8800hd
* uniboxhde

# BroadMedia
* bre2zet2c
* sf128
* sf138
* sf3038

# Ceryon
* 9910lx
* 9911lx
* 9920lx
* e4hd
* e4hdcombo
* e4hdhybrid
* odin2hybrid
* odinplus
* protek4k
* sf208
* sf228
* sf238
* singleboxlcd
* twinboxlcd
* twinboxlcdci5

# Clap
* cc1

# Cube
* cube

# DAGS
* force1
* force1plus
* force2
* force2nano
* force2plus
* force2plushv
* force2se
* force3uhd
* force3uhdplus
* force4
* iqonios100hd
* iqonios200hd
* iqonios300hd
* iqonios300hdv2
* mediabox
* optimussos
* optimussos1
* optimussos1plus
* optimussos2
* optimussos2plus
* optimussos3plus
* tm2t
* tm4ksuper
* tmnano
* tmnano2super
* tmnano2t
* tmnano3t
* tmnanom3
* tmnanose
* tmnanosecombo
* tmnanosem2
* tmnanoseplus
* tmsingle
* tmtwin
* tmtwin4k
* valalinux
* worldvisionf1
* worldvisionf1plus

# Dinobot
* anadol4k
* anadol4kcombo
* anadol4kv2
* axashis4kcombo
* axashis4kcomboplus
* dinobot4k
* dinobot4kl
* dinobot4kmini
* dinobot4kplus
* dinobot4kpro
* dinobot4kse
* ferguson4k
* mediabox4k

# Dreambox
* dm500hd
* dm500hdv2
* dm520
* dm7020hd
* dm7020hdv2
* dm7080
* dm800
* dm8000
* dm800se
* dm800sev2
* dm820
* dm900
* dm920

# EBox
* ebox5000
* ebox5100
* ebox7358
* eboxlumi

# Entwopia
* bre2ze
* enfinity
* evomini
* evominiplus
* marvel1
* x2plus

# Fulan
* adb_box
* arivalink200
* atemio520
* atemio530
* atevio7500
* cuberevo
* cuberevo_2000hd
* cuberevo_250hd
* cuberevo_3000hd
* cuberevo_mini
* cuberevo_mini2
* fortis_hdbox
* hl101
* hs7110
* hs7119
* hs7420
* hs7429
* hs7810a
* hs7819
* ipbox55
* ipbox99
* ipbox9900
* octagon1008
* sagemcom88
* spark
* spark7162
* tf7700
* ufc960
* ufs910
* ufs912
* ufs913
* ufs922
* vitamin_hd5000

# GB
* gb800se
* gb800seplus
* gb800solo
* gb800ue
* gb800ueplus
* gbipbox
* gbquad
* gbquadplus
* gbultrase
* gbultraue
* gbultraueh
* gbx1
* gbx2
* gbx3
* gbx3h

# HyperCube
* su980

# INI
* atemio5x00
* atemio6000
* atemio6100
* atemio6200
* atemionemesis
* beyonwizt2
* beyonwizt3
* beyonwizt4
* bwidowx
* bwidowx2
* evoslim
* mbhybrid
* mbmini
* mbminiplus
* mbtwin
* mbultra
* opticumtt
* sezam1000hd
* sezam5000hd
* sezammarvel
* ventonhdx
* xpeedlx
* xpeedlx3

# IXUSS
* ixussone
* ixusszero

# Linkdroid
* alien5
* k1plus
* k1pro
* k2pro
* k2prov2
* k3pro

# MINIX
* x8hp

# Octagon
* sf4008
* sf5008
* sf8008

# Odin
* axase3
* axase3c
* axodin
* axodinc
* classm
* evo
* evoe3hd
* galaxym6
* genius
* geniuse3hd
* maram9
* starsatlx

# Odroid
* odroidc2

# Protek
* 9900lx

# RaspberryPi
* raspberrypi
* raspberrypi0
* raspberrypi2
* raspberrypi3

# Tiviar
* tiviaraplus
* tiviarmin

# Tripledot
* enibox
* evoslimse
* evoslimt2c
* mago
* sf108
* sf98
* t2cable
* tyrant
* x1plus
* xcombo

# Uclan
* ustym4kpro

# WeTek
* wetekhub
* wetekplay
* wetekplay2

# XCore
* bcm7358
* spycat4k
* spycat4kcombo
* spycat4kmini
* vp7358ci

# XT
* beyonwizu4
* et13000

# Ubuntu 18.04.x LTS setup:
* Run our ltsubuntu.sh

# How to build an Open PLi image (PLi experience):
1. Clone openpli-oe-core somewhere:
* git clone -b develop --depth 1 https://github.com/OpenPLi/openpli-oe-core.git

2. Enter the openpli-oe-core directory:
* cd openpli-oe-core

3. Clone pli-extras:
* git clone -b develop --depth 1 https://github.com/PLi-metas/pli-extras.git

4. Initialize and update all repositories:
* cd pli-extras
* ./update.sh
* cd ..

5. Build PLi image for your machine (Example: dm7020hd):
* MACHINE=dm7020hd make image

6. (Optional) Build the feed for your machine:
* MACHINE=dm7020hd make feed
```
Hint: Each time you run the command from step 4 all git repositories will get updated to their latest versions.
```
# If you got machine error the next time you wanted to build an image:
* cd pli-extras
* ./update.sh
* cd ..
* MACHINE=dm7020hd make image

# How to build our vision image:
5. Build our vision of enigma2 image for your machine (Example: dm7020hd):
* cd build
* source env.source
* MACHINE=dm7020hd bitbake vision-enigma2-image
```
You can use "image.sh" for all of your compiles.
```
# Hints for multiple architectures:
* Removing the "build" directory solves most of the errors. For a fast remove use "rm -rf build".
```
If you just want to reduce the build size use "cleanup.sh".
```
* If you want to compile images for old machines like dm800/cube/su980, first build for them.
* If you want to compile images for x64 machines like alien5/kxpx series, first build for them.
* If you want to compile images for 4K machines with ARM architecture and you get error each time, try compile for a Mipsel machine like dm7020hd first then compile your ARM images.

# Donation

If you're interested in monthly builds (It could be twice a month also) or future developments, please contact https://forums.openpli.org/user/25911-persian-prince/

We may have online feeds if the donation could cover it.

Test images are here: http://www.mediafire.com/folder/p0hyt9w5cq4d9/pli-extras
