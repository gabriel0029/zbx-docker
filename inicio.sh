#!/bin/bash

echo "Iniciando a instalação do Docker. Aguarde!!!"
echo ""

curl -fsSL https://get.docker.com/ | bash

echo "Instalação finalizada."
echo ""

echo "Iniciando a instalação do Docker Compose. Aguarde!!!"
echo ""

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Aplicando ajustes necessários!!!"
echo ""

chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "Instalação finalizada!!!"
echo ""
echo "Essas são as versões do Docker e Docker Compose que foram acabas de serem instaladas."
echo ""

docker --version
docker-compose --version

echo ""
echo "Criando diretorios"
echo ""

ATUAL_DIR=${pwd}
mkdir -p zbx_env/var/lib/zabbix
cd zbx_env/var/lib/zabbix/
mkdir -p alertscripts export externalscripts mibs modules snmptraps
cd $ATUAL_DIR
