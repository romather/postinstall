#!/usr/bin/env bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o sistema ##

sudo apt update && sudo apt dist-upgrade -y &&

## Instalando pacotes e programas ##

sudo apt install gdebi-core ttf-mscorefonts-installer software-properties-common apt-transport-https curl python3 python-pip git build-essential libssl-dev flatpak gnome-software-plugin-flatpak openjdk-11-jre-headless openjdk-11-jdk-headless icedtea-netx -y &&

## Instalando chrome ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo gdebi *.deb &&
rm *.deb &&

## Instalando pacotes snap ##

sudo snap install vlc 
sudo snap install skype --classic 
sudo snap install telegram-desktop
sudo snap install code --classic 
sudo snap install ffmpeg
sudo snap install opera

## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

## Atualizando e limpando ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

## Finalizando ##

echo "Instalação finalizada com sucesso. Aproveite seu novo sistema."
