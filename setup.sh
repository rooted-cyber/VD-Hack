un() {
		cd ~/VD-Hack
		unzip .vd.zip
		ch
		}
	ch () {
		cd ~/VD-Hack
		if [ -e .random.py ];then
		echo
		else
		un
		fi
		}
		fg() {
			cd ~/VD-Hack
			if [ -e ngrok ];then
			echo
			else
			printf "\n \033[1;92m Downloading Ngrok\n\n"
			wget https://bin.equinox.io/a/9DEmmMmXnT/ngrok-2.2.9-linux-arm64.zip
			unzip ngrok*
			fi
			}
			


g() {
	printf "\033[1;92m Installing Requirement..\n"
	apt update
	apt upgrade
	apt install curl
	apt install openssh
	apt install figlet
	apt install python
	apt install wget
	apt install php
	cd ~/VD-Hack
	unzip .vd.zip
	ch
	fg
	clear
	cd $PREFIX/bin
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> lock
	echo "bash ~/VD-Hack/vd.sh" >> vd
	chmod 777 vd
	printf "\n\033[1;93m Now you can use this command :- vd\n"
	read
	}
	g