#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando serviço Apache2..."

apt-get install apache2 -y

echo "Instalando serviço unzip..."

apt install unzip -y

echo "Baixando arquivos do github..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unpzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ 

echo "Aplicação finalizada!"