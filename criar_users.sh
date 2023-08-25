#!/bin/bash

echo "criando diretorios....."

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "concluido..."

echo "criando grupos....."

groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_ADM

echo "concluido..."

echo "criando usuarios....."

useradd carlos -c "carlos_ADM" -m -s /bin/bash -p $(openssl passwd -6 admin) -G GRP_ADM
passwd carlos -e

useradd maria -c "maria_ADM" -m -s /bin/bash -p $(openssl passwd -6 admin) -G GRP_ADM
passwd maria -e

useradd joao -c "joao_ADM" -m -s /bin/bash -p $(openssl passwd -6 admin) -G GRP_ADM
passwd joao -e



useradd debora -c "debora_VEN" -m -s /bin/bash -p $(openssl passwd -6 vendas) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "sebastiao_VEN" -m -s /bin/bash -p $(openssl passwd -6 vendas) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "roberto_VEN" -m -s /bin/bash -p $(openssl passwd -6 vendas) -G GRP_VEN
passwd roberto -e



useradd josefina -c "josefina_SEC" -m -s /bin/bash -p $(openssl passwd -6 sec1234) -G GRP_SEC
passwd josefina -e

useradd amanda -c "amanda_SEC" -m -s /bin/bash -p $(openssl passwd -6 sec1234) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "rogerio_SEC" -m -s /bin/bash -p $(openssl passwd -6 sec1234) -G GRP_SEC
passwd rogerio -e

echo "concluido..."

echo "configuracoes finais....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico









echo "finalizado com sucesso!!!"
