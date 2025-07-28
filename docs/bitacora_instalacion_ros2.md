# 📘 Bitácora de instalación de ROS 2 en Raspberry Pi 5

Este documento registra, paso a paso, todo lo que se hizo para instalar y configurar ROS 2 Jazzy en una Raspberry Pi 5 con Ubuntu 24.04.  
La idea es que cualquier persona hispanohablante pueda repetir el proceso sin perderse.

---

## 📅 Fecha

25 de julio del 2025

---

## 💻 Equipo y sistema operativo

- **Hardware:** Raspberry Pi 5  
- **Almacenamiento:** microSD o SSD  
- **Sistema operativo:** Ubuntu 24.04 LTS (arm64)  
- **ROS 2:** Jazzy (perfil `ros-base`)

---

## 🧰 Pasos ejecutados

### 🔹 1. Actualización del sistema

sudo apt update && sudo apt upgrade -y

🔹 2. Instalación de herramientas base

sudo apt install software-properties-common curl -y
sudo add-apt-repository universe
sudo apt update

🔹 3. Adición de repositorios y claves de ROS 2

sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=arm64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update

🔹 4. Instalación de ROS 2

sudo apt install ros-jazzy-ros-base -y

🔹 5. Configuración del entorno ROS 2

echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
source ~/.bashrc

🔹 6. Verificación inicial

ros2 --version
ros2 topic list

✅ Se espera que no haya errores y ROS 2 esté funcionando correctamente.

🔹 7. Dependencias adicionales instaladas

sudo apt install python3-colcon-common-extensions python3-pip -y
Estas herramientas serán útiles para construir y ejecutar nodos personalizados en el futuro.

Observaciones
La instalación se realizó sin errores (completar al ejecutar)

No se usaron herramientas gráficas, lo que es ideal para mantener el sistema liviano

✍Autor
Bitácora mantenida por Wolfrank Villamil
Repositorio: ros2-rpi5-setup
