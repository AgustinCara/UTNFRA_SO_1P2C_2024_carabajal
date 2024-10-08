#!/bin/bash

# Obtener IP pública
IP_PUBLICA=$(curl -s ifconfig.me)
echo "IP Pública: $IP_PUBLICA"

# Obtener URL del repositorio remoto (suponiendo que estás en un repositorio git)
REPO_URL=$(git config --get remote.origin.url)
echo "URL del repositorio remoto: $REPO_URL"

# Crear el directorio si no existe
DIRECTORIO="/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_carabajal/RTA_ARCHIVOS_Examen_20241008"
mkdir -p "$DIRECTORIO"

# Crear el archivo Filtro_Avanzado.txt
ARCHIVO="$DIRECTORIO/Filtro_Avanzado.txt"

# Mostrar el contenido del archivo
cat "$ARCHIVO"
