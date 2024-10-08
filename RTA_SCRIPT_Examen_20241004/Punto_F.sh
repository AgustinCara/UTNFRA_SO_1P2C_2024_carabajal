#!/bin/bash
cd /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_carabajal/RTA_ARCHIVOS_Examen_20241008
# Obtener IP pública
IP_PUBLICA=$(curl -s ifconfig.me)

# Obtener URL del repositorio remoto (suponiendo que estás en un repositorio git)
REPO_URL=$(git config --get remote.origin.url)


# Crear el archivo Filtro_Avanzado.txt
sudo touch Filtro_Basico.txt

echo "IP Pública: $IP_PUBLICA" >Filtro_Avanzado.txt
echo "URL del repositorio remoto: $REPO_URL" >>Filtro_Avanzado.txt
# Mostrar el contenido del archivo
cat /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_carabajal/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
