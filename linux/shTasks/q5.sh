#!/bin/bash
#to install a package 'tomcat' and before installing check whether package installed or not

if dpkg -l | grep -q tomcat9; then
	echo "Tomcat9 is already installed"
else
	echo "Installing tomcat9..."
	sudo apt update
	sudo apt install -y tomcat9
fi

