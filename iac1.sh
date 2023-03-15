#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -c "Maria João" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -c "João Maria" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -c "Debora Nascimento" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Souza" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silveira" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -c "Josefina Souza" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -c "Amanda Santos" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Minotauro" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Adicionando usuários aos grupos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado..."



