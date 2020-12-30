#!/usr/bin/bash
#Authors:kNIGHT & Shashank
#Co-Author:NightHawk

#Some Colors :)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[39"
BOLD="\e[1m"
NORMAL="\e[0m"

Banner() {

banner=$(base64 -d <<<"4pWU4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ
4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWXCiAKCiQk
JCQkJCRcICAgICAgICQkJCQkJCQkXCAgJCQkJCQkXCAgICAgCiQkICBfXyQkXCAgICAgIFxfXyQk
ICBfX3wkJCAgX18kJFwgICAKJCQgfCAgJCQgfCAgICAgICAgJCQgfCAgICQkIC8gIFxfX3wKJCQk
JCQkJCAgfCQkJCQkJFwgJCQgfCAgIFwkJCQkJCRcCiQkICBfX19fLyBcX19fX19ffCQkIHwgICAg
XF9fX18kJFwKJCQgfCAgICAgICAgICAgICAgJCQgfCAgICQkXCAgICQkIHwKJCQgfCAgICAgICAg
ICAgICAgJCQgfCAgIFwkJCQkJCQgIHwKXF9ffCAgICAgICAgICAgICAgXF9ffCAgICBcX19fX19f
LwoK4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ
4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWdCgo=")


echo -e $BOLD"$banner" | lolcat 

echo -e $BOLD ""

echo -e $BOLD "${MAGENTA} (1)~Get Info On Number \e[0m"

echo -e $BOLD ""

echo -e $BOLD "${MAGENTA} (2)~Get Validity Of Email \e[0m"

echo -e $BOLD ""

echo -e $BOLD "${MAGENTA} (3)~Get Info On IP \e[0m"

echo -e $BOLD ""

echo -e $BOLD "${MAGENTA} (4)~Exit \e[0m"

echo -e $BOLD ""



read -p $'\n\e[1m\e[96mChoose an option: ' choice

Choice

}

Choice() {

case $choice in
    
    1)
	clear
	echo -e $BOLD"$banner" | lolcat 
	Number
	;;

    2)
	clear
	echo -e $BOLD"$banner" | lolcat 
	Email
	;;

    3)
	clear
	echo -e $BOLD"$banner" | lolcat 
	IP
	;;

    4)
	clear
	echo -e $BOLD"$banner" | lolcat 
	echo ""
	echo Thanks For Using... | lolcat
	;;
    *)
	echo ""
	echo -e $BOLD "${RED}Invalid Option!!!"
	clear
	Banner
	;;
esac

}

Email() {

echo -e $BOLD "${RED}Limited to 5 requests per hour!"

read -p $'\n\e[1m\e[96mEnter Email: \e[0m' email

{ echo "HELO gmail.com";sleep 2;echo "mail from:<lol@gmail.com>";sleep 2;echo "rcpt to:<"$email">";sleep 2;} | telnet gmail-smtp-in.l.google.com 25 &>.Hiddencheck.txt

check=$(cat .Hiddencheck.txt | grep -o "250" | tail -n1)
error_check=$(cat .Hiddencheck.txt | grep "502")

case $error_check in

    502)
	echo -e $BOLD ""
	
	echo -e $BOLD "Network Error!!!"
	;;

    *)
	
	;;
esac

case $check in

    250)
	echo -e $BOLD ""
	echo -e $BOLD "Valid Email!!!"
	;;
    *)
	echo -e $BOLD ""
	echo -e $BOLD "Invalid Email!!!"
	;;
esac

}

IP() {

    #readjs=$(cat .ip | tail -n17)
    
    read -p $'\n\e[1m\e[36mEnter IP: \e[0m' ip

    curl -L iplist.cc/api/$ip &>.ip

    echo -e $BOLD ""
    
    echo -e $BOLD "${CYAN}IP:$(cat .ip | tail -n17 | jq .ip)"
    
    echo -e $BOLD ""

    echo -e $BOLD "${CYAN}Country:$(cat .ip | tail -n17 | jq .countryname)"

    echo -e $BOLD ""

    echo -e $BOLD "${CYAN}ASN:$(cat .ip | tail -n17 | jq .asn | cut -c2-)"

    echo -e $BOLD ""

    echo -e $BOLD "${CYAN}ISP:$(cat .ip | tail -n17 | jq .detail)"

    echo -e $BOLD ""

    echo -e $BOLD "${CYAN}Spam:$(cat .ip | tail -n17 | jq .spam)"

    echo -e $BOLD ""

    echo -e $BOLD "${CYAN}Tor:$(cat .ip | tail -n17 | jq .tor)"

    echo -e $BOLD ""
    
    echo -e $BOLD "Thanks For Using" | lolcat

    exit 0

}

Number() {

    read -p $'\n\e[1m\e[96mPhone Number(In local format): \e[0m' number
    read -p $'\n\e[1m\e[96mCountry Code:(eg:IN-India): \e[0m' code
    api="6e1e8b9f3961a4a6ca3b871a2af0905f"
    data=$(curl "http://apilayer.net/api/validate?access_key=$api&number=$number&country_code=$code&format=2" &>.num)

    echo -e $BOLD "$(cat .num | tail -n1 | jq | cut -c2-)" | lolcat
    echo -e $BOLD ""
    
}

clear
Banner
