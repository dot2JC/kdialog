#!/bin/bash

y=0

while [ $y = 0 ]
do

	kdialog --title "IP Address" --inputbox "Enter IP Address" > temp.txt
	if [ $? = 0 ]
	then
		egrep -f regex.txt temp.txt
			if [ $? = 0 ] 
			then 
				kdialog --msgbox "IP Address is valid."
			else
				kdialog --error "IP Address is not valid."
			fi
	else
		break
	fi
	kdialog --yesno "Would you like to continue?"
	if [ $? = 0 ]
	then
		y=0
	else
		y=1
	fi
done

