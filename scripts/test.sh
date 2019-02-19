#!/bin/bash
	read -p "Provide logged username target : " TARGET
	if [[ $(users | grep $TARGET) != "" ]]; then
		sudo pkill -u $TARGET; sudo userdel -f $TARGET; sudo rm -rf /home/$TARGET
	else
		echo "Provided username is not logged in or doesn't exist."
	fi
 
