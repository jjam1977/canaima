#!/bin/bash
echo "Inicio de escrip de Respaldo"
fecha=$(date +"%m-%d-%Y-%T" )
cp -R /home/usuario/control/ /var/www/respaldo/respaldo$fecha
echo "Finalizado el Respaldo"
echo "Parando el Servicio de Apache"
service apache2 stop
echo "Inicializando el Servicio de Apache"
service apache2 start

