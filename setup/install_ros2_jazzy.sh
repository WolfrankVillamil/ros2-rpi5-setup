#!/bin/bash

echo "🔧 Iniciando instalación de ROS 2 Jazzy en Raspberry Pi 5..."

# Paso 1: Actualización del sistema
sudo apt update && sudo apt upgrade -y

# Paso 2: Instalar herramientas necesarias
sudo apt install software-properties-common -y

# Paso 3: Agregar repositorio universe
sudo add-apt-repository universe
sudo apt update

# Paso 4: Agregar claves y repositorio de ROS 2
sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=arm64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Paso 5: Instalar ROS 2 base
sudo apt update
sudo apt install ros-jazzy-ros-base -y

# Paso 6: Configurar el entorno
echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "✅ Instalación completada exitosamente."
