#!/bin/bash

echo "Criando diretórios..."

mkdir /publico 
mkdir /adm  
mkdir /ven 
mkdir /sec 


echo "Criado grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha@301Dio434) -G GRP_ADM 
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha@306Dio412) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha@304Dio432) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha@303Dio323) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha@303Dio512) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha@303Dio435) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha@213Dio402) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha@402Dio412) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha@303Dio418) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado."





