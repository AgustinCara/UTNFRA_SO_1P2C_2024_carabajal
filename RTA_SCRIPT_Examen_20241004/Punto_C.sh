#!/bin/bash

# Crear grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Crear usuarios y asignar grupos
for i in {1..3}; do
    sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_A$i" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A$i
    sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A$i
done

for i in {1..3}; do
    sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_P$i" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P$i
    sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_P$i
done

# Asignar el grupo secundario p1c2_2024_gProfesores al usuario p1c2_2024_P1
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1

echo "Usuarios y grupos creados exitosamente."
