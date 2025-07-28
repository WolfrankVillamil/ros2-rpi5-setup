# 🛠 Guía detallada de instalación de ROS 2 Jazzy en Raspberry Pi 5

Este documento explica el proceso paso a paso para instalar ROS 2 Jazzy en una Raspberry Pi 5 con Ubuntu 24.04 LTS (64-bit, arquitectura ARM64).

---

## 📦 Requisitos previos

- Raspberry Pi 5 con microSD o SSD  
- Ubuntu 24.04 LTS (versión arm64) ya instalado  
- Acceso a internet  
- Usuario con permisos sudo

---

## 🧱 Paso 1: Actualizar el sistema

Abre una terminal y ejecuta:

sudo apt update && sudo apt upgrade -y
Esto asegura que todo el sistema esté actualizado.

📚 Paso 2: Instalar herramientas necesarias

Instala herramientas de software y configuración de repositorios:

sudo apt install software-properties-common curl -y

También es recomendable agregar el repositorio universe:

sudo add-apt-repository universe
sudo apt update

🔑 Paso 3: Agregar claves y repositorio oficial de ROS 2

sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=arm64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update

🚀 Paso 4: Instalar ROS 2 Jazzy (versión base)

sudo apt install ros-jazzy-ros-base -y

Esto instalará una versión ligera de ROS 2 sin herramientas gráficas (ideal para la Raspberry Pi).

⚙️ Paso 5: Configurar el entorno

Agrega ROS 2 al entorno de usuario:

echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
source ~/.bashrc

✅ Paso 6: Verificación de instalación

Prueba que ROS 2 está funcionando:

ros2 --version
ros2 topic list

Si no hay errores, ¡la instalación fue exitosa!

🧩 Paso 7 (opcional): Instalar herramientas adicionales

sudo apt install python3-colcon-common-extensions python3-pip -y

Estas herramientas serán necesarias más adelante para compilar tus propios paquetes.

✍️ Autor
Guía desarrollada por Wolfrank Villamil
