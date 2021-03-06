#!/usr/bin/env bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

## Instalando pacotes e programas ##

if $(uname -m | grep 'x86_64'); then
   
    sudo apt install gdebi ttf-mscorefonts-installer software-properties-common apt-transport-https curl git build-essential libssl-dev flatpak gnome-software-plugin-flatpak gparted -y &&

    ## Instalando chrome ##

    wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo gdebi *.deb &&
    rm *.deb &&

    ## Atualizando o sistema ##

    sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

    ## Instalando pacotes snap ##

    sudo snap install vlc 
    sudo snap install telegram-desktop
    sudo snap install skype --classic
    sudo snap install opera

    ## Adicionando repositório Flathub ##

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

    ## Atualizando e limpando ##

    sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y
else
    sudo apt install gdebi ttf-mscorefonts-installer software-properties-common apt-transport-https curl git build-essential libssl-dev flatpak gnome-software-plugin-flatpak gparted -y &&
    
    ## Atualizando o sistema ##

    sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

    ## Instalando pacotes snap ##

    sudo snap install vlc 
    sudo snap install telegram-desktop
    sudo snap install skype --classic
    sudo snap install opera

    ## Adicionando repositório Flathub ##

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

    ## Atualizando e limpando ##

    sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y    
fi