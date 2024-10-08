#!/bin/bash

# Crear la estructura de directorios
mkdir -p /home/vagrant/Estructura_Asimetrica/correo
mkdir -p /home/vagrant/Estructura_Asimetrica/clientes

# Crear cartas_1 a cartas_100 en ambas carpetas
for i in $(seq 1 100); do
  mkdir -p /home/vagrant/Estructura_Asimetrica/correo/cartas_$i
  mkdir -p /home/vagrant/Estructura_Asimetrica/clientes/cartas_$i
done

# Crear carteros_1 a carteros_10 solo en correo
for j in $(seq 1 10); do
  mkdir -p /home/vagrant/Estructura_Asimetrica/correo/carteros_$j
done

    # Validar
    
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

cd /home/vagrant
tree Estructura_Asimetrica/
