#!/bin/bash

# Script pour un chronomètre
# affiche le temps écoulé depuis le reboot du script
#

HD=$(date +%s)
SC=$(date +%S)	#	#	#	# si on veut afficher les secondes en cours
tpfx=60	#	#	#	#	# 60
let csc=$tpfx-$SC	#	#	# calcule les secondes en cours jusqu'à 60 secondes

while : ;do
clear
HC=$(date +%s)
let chronoH=($HC-$HD)/3600 # affiche des heures
let chronoM=($HC-$HD)/60   # affiche des minutes

if [ $chronoH -le 12 ]
 then
 echo -ne '\033[32;47m'"J'ai donné ses croquettes à la chatte il y a $chronoH h " #vert
 else
	if [ $chronoH -gt 12 -o $chronoH -le 18 ]
	then
	echo -ne '\033[33;47m'"J'ai donné ses croquettes à la chatte il y a $chronoH h " #orange
	else
	echo -ne '\033[34;47m'"J'ai donné ses croquettes à la chatte il y a $chronoH h " #rouge
	fi
fi


si plus de 26 heures, jouer un son
if [ $chronoH -gt 26 ]
 then 
 player miaou.mp3
else
fi

sleep 60 # Rafraîchissement 60 secondes
tput sgr0 # restauration des paramètres d'affichage par défaut
clear
done
