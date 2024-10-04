#!/bin/bash
sudo fdisk -l
sudo fdisk /dev/sdc
n
p


+1G
n
p

+1G
n
p

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w

sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11
sudo mkdir -p mnt/{parcial_1,parcial_2,parcial_3,profesores}
sudo mount /dev/sdc1 /mnt/parcial_1
sudo mount /dev/sdc2 /mnt/parcial_2
sudo mount /dev/sdc3 /mnt/parcial_3
sudo mount /dev/sdc5 /mnt/parcial_5
sudo mount point does not exist.
sudo mount /dev/sdc5 /mnt/parcial_1
sudo mount /dev/sdc6 /mnt/parcial_2
sudo mount /dev/sdc7 /mnt/parcial_3
sudo mount /dev/sdc8 /mnt/parcial_1
sudo mount /dev/sdc9 /mnt/parcial_2
sudo mount /dev/sdc10 /mnt/parcial_3
sudo mount /dev/sdc11 /mnt/profesores
cat /etc/fstab
echo "/dev/sdc1 /mnt/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /mnt/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /mnt/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 /mnt/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /mnt/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /mnt/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /mnt/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /mnt/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /mnt/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11/mnt/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo mount -a
lsblk -f
