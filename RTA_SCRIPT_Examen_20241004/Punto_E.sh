#!/bin/bash
cd /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_carabajal/RTA_ARCHIVOS_Examen_20241008

# Total de memoria RAM
total_memoria=$(grep MemTotal /proc/meminfo | awk '{print $2 " " $3}')

# Fabricante del chasis
fabricante_chasis=$(sudo dmidecode -t chassis | grep "Manufacturer" | awk -F ': ' '{print $2}')

# Escribir los resultados en el archivo Filtro_Basico.txt
sudo touch Filtro_Basico.txt
echo "Total de Memoria RAM: $total_memoria" >Filtro_Basico.txt
echo "Fabricante del Chasis: $fabricante_chasis" >>Filtro_Basico.txt
cat /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_carabajal/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt
