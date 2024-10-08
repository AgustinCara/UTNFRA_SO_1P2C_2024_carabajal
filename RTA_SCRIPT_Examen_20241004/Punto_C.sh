#!/bin/bash

# Crear grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Crear usuarios y asignar grupos
for i in {1..3}; do
    sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_A$i" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A$i
    sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A$i
done

    sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_P1" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
    
# Asignar el grupo secundario p1c2_2024_gProfesores al usuario p1c2_2024_P1
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1

echo "Usuarios y grupos creados exitosamente."

# Crear las carpetas
  mkdir -p /home/vagrant/alumno_1
  mkdir -p /home/vagrant/alumno_2
  mkdir -p /home/vagrant/alumno_3
  mkdir -p /home/vagrant/profesores

# Mover las carpetas a sus respectivos destinos
  mv /ruta/origen/p1c2_2024_A1 /home/vagrant/alumno_1/
  mv /ruta/origen/p1c2_2024_A2 /home/vagrant/alumno_2/
  mv /ruta/origen/p1c2_2024_A3 /home/vagrant/alumno_3/
  mv /ruta/origen/p1c2_2024_P1 /home/vagrant/profesores/

# Cambiar permisos 

  sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /home/Examenes-UTN/alumno_1
  sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /home/Examenes-UTN/alumno_2
  sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /home/Examenes-UTN/alumno_3
  sudo chown -R p1c2_2024_P1:p1c2_2024_P1 /home/Examenes-UTN/profesores

  sudo chmod 750 alumno_1
  sudo chmod 760 alumno_2
  sudo chmod 700 alumno_3
  sudo chmod 775 profesores
