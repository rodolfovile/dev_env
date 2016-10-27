#!/bin/bash

escolha=
until [ "$escolha" = "0" ]; do
    echo ""
    echo "PROGRAM MENU"
    echo "1 - Instalacao do JDK "
    echo "2 - Adicionar o CURL, nao sabe oque e ? visite = https://curl.haxx.se/docs/manpage.html"
    echo "3 - Editores Texto, JEDIT"
    echo "4 - Sublime text 2"		
    echo "5 - instalar eclipse"
    echo "6 - Android Studio"
    echo "0 - exit program"
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) sudo add-apt-repository ppa:webupd8team/java &&
            sudo apt-get install oracle-java8-installer  &&
	    sudo apt-get install oracle-java8-set-default && 
	    sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make && sudo apt-get update &&
	    sudo apt-get install ubuntu-make;;

        2 ) sudo apt-get install curl ;;
	3 ) sudo apt-get install jedit ;;
        4 ) sudo add-apt-repository ppa:webupd8team/sublime-text-2 &&
	    sudo apt-get update && sudo apt-get install sublime-text;;
	5 ) sudo umake ide eclipse;;
	6 ) sudo umake android android-studio;;
        0 ) exit ;;
        * ) echo "Digite suas opcoes ou DIGITE 0 para sair"
    esac
done
