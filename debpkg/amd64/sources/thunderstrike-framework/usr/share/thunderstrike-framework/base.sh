#!/bin/bash
# Author : kNIGHT
# Co-Author : GUaRdiAn
# Maintainer : 0n1cOn3
# IG : instagram.com/cyberknight_777
# TG : t.me/cyberknight_777

## Some Placeholders: [!] [*] [✓] [✗]

# Modules available
modules=3
version=v0.1e

#some colors
RED="\e[31m"
BOLD="\e[32m"
YELLOW="[\e[0m\e[1;93m"
BLUE="\e[34m"
GREEN="\e[32m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[0m\e[1;39m"
BOLD="\e[1m"
NORMAL="\e[0m"
TURKISE="\e[1;96m"
IDK2="\e[0m\e[1;93m"
IDK3="\e[0m\e[1;96m"
LIGHTGREEN="\e[1;92m"
PIYELLOW="\e[1;93m"
DARVIOL="\e[1;35m"

#os=$(uname -o)

#case $os in

#    Android)

#	os=bash
#	;;
#    GNU/Linux)
#	os=sudo bash
#	;;
#esac

Banner() {
python3 banner.py | lolcat

echo -e "${TURKISE}--+${YELLOW} thunderstrike $version ${TURKISE}       ]+-- \e[0m"
echo -e "${TURKISE}--+[${RESTORE} $modules module(s) are available! ${TURKISE}]+-- \e[0m"

}
Prompt() {
echo -e $BOLD ""
echo -e "\e[1;92mSupported Commands For TSFramework \e[0m"
echo -e $BOLD ""
echo about - About This FrameWork | lolcat 
echo -e $BOLD ""
echo banner - Call another Banner | lolcat 
echo -e $BOLD ""
echo modules - Show Available Modules | lolcat 
echo -e $BOLD ""
echo knightload - Run kNIGHTlOAD '(TERMUX ONLY!)' | lolcat 
echo -e $BOLD ""
echo p-ts - Run P-TS | lolcat
echo -e $BOLD ""
echo nmap-cli - Run Nmap-Cli | lolcat
echo -e $BOLD ""
echo update - To update TSFramework | lolcat
echo -e $BOLD ""
echo exit - Exit The TSFramework | lolcat 
echo -e $BOLD ""

read -p $'\e[4;5;96mtsf\e[0m \e[96m> \e[0m' tsf

case $tsf in

    banner)
	
	clear
	Banner
	Prompt
	;;
    
    about)
	
	echo -e $BOLD"The ThunderStrike-FrameWork is a project intended to be of ease to Penetration Testers." 
	echo -e $BOLD"The FrameWork has a base Script, a Banner Script, 3 Module Scripts, and a File Directory which contains Files needed by specific Modules."
	echo -e $BOLD"It took us a good amount of time to fix all logic-related Issues."
	echo -e $BOLD"We hope that fhis FrameWork will help you when performing Penetration Tests"
	echo -e $BOLD"We aren't like other Developers who fully-Encrypted there own Code."
	echo -e $BOLD"It Is considered pointless and thefts ff rights Of the end-user."
	echo -e $BOLD"The only reason why our code has some encrypted Code is to allow ASCII Banners to be prompted on Screen without any Logic-gate issues"
	echo ""
	echo -e $BOLD"We Would Like To Thank some People for their Contribution to our FrameWork: " | lolcat
        echo -e $BOLD ""
        echo -e "${TURKISE} SpeedX & REMO773 - For helping in Distro Detection \e[0m"
        echo -e $BOLD ""
        echo -e "${LIGHTGREEN} KapoorDev, Yash, Vicky, And NightHawk - For being Beta Testers \e[0m"
        echo -e $BOLD ""
        echo -e "${PIYELLOW} 0n1c0n3 - For The Idea Of plugins.installed, code improvement, other implementations etc... \e[0m"
        echo -e $BOLD ""
        echo -e "${DARVIOL} R37R0_GH057 - For helping to create the banner with python \e[0m"
	echo -e $BOLD ""
	echo -e "${CYAN} Th3_Pr0f3ss0r - Help In kNIGHTlOAD's snippets \e[0m"
	echo -e $BOLD ""
	echo -e "${MAGENTA} Shashank - Co-Author Of P-TS in Tsf"
	echo -e $BOLD ""
	sleep 5
	echo "Press Enter To Continue...." | lolcat 
	read a1
	
	clear
	Banner
	Prompt
	;;
    
    modules)

	echo -e $BOLD ""
	echo -e "\e[1;95mAvailable Modules List :- \e[0m"
	echo -e $BOLD ""
	echo "kNIGHTlOAD - An Advanced Hybrid Rat(ONLY FOR TERMUX)" | lolcat
	echo -e $BOLD ""
	echo "P-TS - A Personal Tracking System Which Uses API From Several Websites" | lolcat
	echo -e $BOLD ""
	echo "Nmap-Cli - A Tool To Automate Usage Of Nmap" | lolcat
	echo -e $BOLD ""
	echo -e $GREEN"Please press any Key to continue"
	read a1
	
	clear
	Banner
	Prompt
	;;
    
    knightload)

	clear
	Banner
	echo -e $BOLD ""
	echo "Starting Tool...." | lolcat
	sleep 2
	bash knightload.sh
	;;

    p-ts)

	clear
	Banner
	echo -e $BOLD ""
	echo "Starting Tool...." | lolcat
	sleep 2
	P-TS
	;;

    nmap-cli)

	clear
	Banner
	echo -e $BOLD ""
	echo "Starting Tool...." | lolcat
	sleep 2
        bash nmap-cli.sh
	;;

    update)

	clear
	Banner
	echo -e $BOLD ""
	echo "Updating....." | lolcat
	sleep 2
	Update
	;;

    exit)

	clear
	echo -e $BOLD ""
	echo "Exiting Framework...." | lolcat
	echo -e $BOLD ""
base64 -d <<<"4paI4paI4paI4paI4paI4paI4paI4pWX4paI4paI4pWX4paR4paR4paI4paI4pWX4paR4paI4paI
4paI4paI4paI4pWX4paR4paI4paI4paI4pWX4paR4paR4paI4paI4pWX4paI4paI4pWX4paR4paR
4paI4paI4pWX4paR4paI4paI4paI4paI4paI4paI4pWXCuKVmuKVkOKVkOKWiOKWiOKVlOKVkOKV
kOKVneKWiOKWiOKVkeKWkeKWkeKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKW
iOKWiOKWiOKVl+KWkeKWiOKWiOKVkeKWiOKWiOKVkeKWkeKWiOKWiOKVlOKVneKWiOKWiOKVlOKV
kOKVkOKVkOKVkOKVnQrilpHilpHilpHilojilojilZHilpHilpHilpHilojilojilojilojiloji
lojilojilZHilojilojilojilojilojilojilojilZHilojilojilZTilojilojilZfilojiloji
lZHilojilojilojilojilojilZDilZ3ilpHilZrilojilojilojilojilojilZfilpEK4paR4paR
4paR4paI4paI4pWR4paR4paR4paR4paI4paI4pWU4pWQ4pWQ4paI4paI4pWR4paI4paI4pWU4pWQ
4pWQ4paI4paI4pWR4paI4paI4pWR4pWa4paI4paI4paI4paI4pWR4paI4paI4pWU4pWQ4paI4paI
4pWX4paR4paR4pWa4pWQ4pWQ4pWQ4paI4paI4pWXCuKWkeKWkeKWkeKWiOKWiOKVkeKWkeKWkeKW
keKWiOKWiOKVkeKWkeKWkeKWiOKWiOKVkeKWiOKWiOKVkeKWkeKWkeKWiOKWiOKVkeKWiOKWiOKV
keKWkeKVmuKWiOKWiOKWiOKVkeKWiOKWiOKVkeKWkeKVmuKWiOKWiOKVl+KWiOKWiOKWiOKWiOKW
iOKWiOKVlOKVnQrilpHilpHilpHilZrilZDilZ3ilpHilpHilpHilZrilZDilZ3ilpHilpHilZri
lZDilZ3ilZrilZDilZ3ilpHilpHilZrilZDilZ3ilZrilZDilZ3ilpHilpHilZrilZDilZDilZ3i
lZrilZDilZ3ilpHilpHilZrilZDilZ3ilZrilZDilZDilZDilZDilZDilZ3ilpEKCuKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKVl+KWkeKWiOKWiOKWiOKWiOKWiOKVl+KWkeKWiOKWiOKWiOKWiOKWiOKW
iOKVl+KWkQrilojilojilZTilZDilZDilZDilZDilZ3ilojilojilZTilZDilZDilojilojilZfi
lojilojilZTilZDilZDilojilojilZcK4paI4paI4paI4paI4paI4pWX4paR4paR4paI4paI4pWR
4paR4paR4paI4paI4pWR4paI4paI4paI4paI4paI4paI4pWU4pWdCuKWiOKWiOKVlOKVkOKVkOKV
neKWkeKWkeKWiOKWiOKVkeKWkeKWkeKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVlwri
lojilojilZHilpHilpHilpHilpHilpHilZrilojilojilojilojilojilZTilZ3ilojilojilZHi
lpHilpHilojilojilZEK4pWa4pWQ4pWd4paR4paR4paR4paR4paR4paR4pWa4pWQ4pWQ4pWQ4pWQ
4pWd4paR4pWa4pWQ4pWd4paR4paR4pWa4pWQ4pWdCgrilojilojilZfilpHilpHilpHilojiloji
lZfilpHilojilojilojilojilojilojilZfilojilojilZfilojilojilojilZfilpHilpHiloji
lojilZfilpHilojilojilojilojilojilojilZfilpEK4paI4paI4pWR4paR4paR4paR4paI4paI
4pWR4paI4paI4pWU4pWQ4pWQ4pWQ4pWQ4pWd4paI4paI4pWR4paI4paI4paI4paI4pWX4paR4paI
4paI4pWR4paI4paI4pWU4pWQ4pWQ4pWQ4pWQ4pWd4paRCuKWiOKWiOKVkeKWkeKWkeKWkeKWiOKW
iOKVkeKVmuKWiOKWiOKWiOKWiOKWiOKVl+KWkeKWiOKWiOKVkeKWiOKWiOKVlOKWiOKWiOKVl+KW
iOKWiOKVkeKWiOKWiOKVkeKWkeKWkeKWiOKWiOKVl+KWkQrilojilojilZHilpHilpHilpHiloji
lojilZHilpHilZrilZDilZDilZDilojilojilZfilojilojilZHilojilojilZHilZrilojiloji
lojilojilZHilojilojilZHilpHilpHilZrilojilojilZcK4pWa4paI4paI4paI4paI4paI4paI
4pWU4pWd4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4pWR4paI4paI4pWR4paR4pWa4paI
4paI4paI4pWR4pWa4paI4paI4paI4paI4paI4paI4pWU4pWdCuKWkeKVmuKVkOKVkOKVkOKVkOKV
kOKVneKWkeKVmuKVkOKVkOKVkOKVkOKVkOKVneKWkeKVmuKVkOKVneKVmuKVkOKVneKWkeKWkeKV
muKVkOKVkOKVneKWkeKVmuKVkOKVkOKVkOKVkOKVkOKVneKWkQ==" | lolcat
echo ""
sleep 3
clear
pwd
;;

    *)
	clear
        Banner
	echo -e $BOLD ""
        echo -e "\e[1;91mWrong Input!!! See Supported Commands For More Info \e[0m"
        Prompt
	;;

esac

}

P-TS() {

    os=$(uname -o)

    case $os in

	Android)

	    bash P-TS.sh
	    ;;
	*)

	    sudo bash P-TS.sh
	    ;;
    esac
    
}

Update() {

    os=$(uname -o)

    case $os in

	Android)

	    cd $PREFIX/tmp
	    git clone https://gitlab.com/cyberknight777/thunderstrike-framework -b dev
	    cd thunderstrike-framework
	    bash install.sh
	    cd ..
	    rm -rf thunderstrike-framework
	    cd
	    ;;

	*)

	    cd /tmp
	    git clone https://gitlab.com/cyberknight777/thunderstrike-framework -b dev
	    cd thunderstrike-framework
	    bash install.sh
	    cd ..
	    rm -rf thunderstrike-framework
	    cd
	    ;;

    esac
    
}


clear
Banner
Prompt

