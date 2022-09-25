#!/bin/bash

echo "Excluindo diretórios e usuários..."

rm -Rf /joao/
rm -Rf /Textos/
rm -Rf /Documentos/

userdel -rf joao

echo "Diretórios e usuários excluídos!"
echo "###########################################################"
echo "Criando diretórios..."

mkdir /publico
chmod 777 /publico

mkdir /adm
chmod 770 /adm

mkdir /ven
chmod 770 /ven

mkdir /sec
chmod 770 /sec

echo "Diretórios criados!"
echo "###########################################################"
echo "Criando grupos..."

addgroup GRP_ADM
chown root:GRP_ADM /adm

addgroup GRP_VEN
chown root:GRP_VEN /ven

addgroup GRP_SEC
chown root:GRP_SEC /sec

echo "Grupos criados!"
echo "###########################################################"
echo "Criando usuários..."

adduser carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

adduser maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

adduser joao_ -c "João Barra" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao_ -e

adduser debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

adduser sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

adduser roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

adduser josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

adduser amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

adduser rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuários criados!"
echo "Conluído!"