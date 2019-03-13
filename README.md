# Open Vision enigma2 images based on Open PLi sources

# AX
* triplex
* ultrabox

# AZBox
* azboxhd
* azboxme
* azboxminime

# Beyonwiz
* beyonwizv2

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
* e4hdultra
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
* dinoboth265
* dinobotu55
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

# GB
* gb800se
* gb800seplus
* gb800solo
* gb800ue
* gb800ueplus
* gbipbox
* gbquad
* gbquadplus
* gbtrio4k
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
* c300
* c300pro
* c400plus
* k1plus
* k1pro
* k2pro
* k2prov2
* k3pro
* kvim2

# MaxyTec
* multibox
* v8plus

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

# SH4
* adb_box
* arivalink200
* atemio520
* atemio530
* atevio7500
* cuberevo
* cuberevo_2000hd
* cuberevo_250hd
* cuberevo_3000hd
* cuberevo_9500hd
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
* pace7241
* sagemcom88
* spark
* spark7162
* tf7700
* ufc960
* ufs910
* ufs912
* ufs913
* ufs922
* vip1_v2
* vip2_v1
* vitamin_hd5000

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

# How to use sdcard images (E.g. raspberrypi):
You could use https://sourceforge.net/projects/win32diskimager/ or similar tools to write the image on a sdcard.

# You could compile Open Vision for other brands/models which PLi maintains them:
https://github.com/OpenVisionE2/openvision-oe/blob/develop/PLi-metas.md

# Ubuntu 18.04.x LTS setup:
Run our ltsubuntu.sh

# How to get latest Ubuntu 18.04.x updates:
* sudo apt-get update
* sudo apt-get install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-18.04

# How to build an Open Vision image:
1. Clone openpli-oe-core somewhere:
* git clone -b develop --depth 1 https://github.com/OpenPLi/openpli-oe-core.git

2. Enter the openpli-oe-core directory:
* cd openpli-oe-core

3. Clone openvision-oe:
* git clone --depth 1 https://github.com/OpenVisionE2/openvision-oe.git

4. Run our image.sh script:
* cd openvision-oe
* ./image.sh

# Hints for multiple architectures:
* Removing the "build" directory solves most of the errors. For a fast remove use "rm -rf build".
```
If you just want to reduce the build size use "cleanup.sh".
```
* If you want to compile images for old machines like dm800/cube/su980, first build for them.
* If you want to compile images for x64 machines like alien5/kxpx series, first build for them.
* If you want to compile images for 4K machines with ARM architecture and you get error each time, try compile for a Mipsel machine like dm7020hd first then compile your ARM images.

# Download

You could download our builds from https://openvision.tech/stb-images/

# Support

Please use our forum at https://forum.openvision.tech or our issue page at https://github.com/OpenVisionE2/openvision-oe/issues

* Are you allowed to compile development versions? Yes!
* Are you allowed to distribute development versions? No!
* Are you allowed to make our images compatible with clones? Yes!
* Are you allowed to distribute cloned images? Yes but only with "clone-version" tag and no development versions.
* Do we support clones? No!
* Are you allowed to make backup of our images? Yes!
* Are you allowed to distribute backup images? Yes but only with "backup-version" tag and no development versions.
* Do we provide support for self-building? No! We prefer to work on our projects.
* Do we need more Vision Developers? Absolutely yes! Contribute to our git and we contact you!
* Do we need more Vision Testers? Absolutely yes! Test our images and report bugs, help us grow you'll see the title flows.

If you see your model in https://github.com/OpenVisionE2/openvision-oe/blob/develop/README.md it means there will be Open Vision for it otherwise read https://forum.openvision.tech/viewtopic.php?f=2&t=30 and don't spam the board!
