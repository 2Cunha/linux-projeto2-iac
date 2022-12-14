#!/bin/bash
echo "atualizando o sistema..."

apt update
apt upgrade -y

echo "Instalando Apache2..."
apt install apache2 -y

###Instalando unzip e wget
apt install unzip -y
apt install wget -y

echo "Fazendo download, descompactando e gravando arquivo na pasta padrão"

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
