\# Bitácora de instalación de ROS 2 en Raspberry Pi 5



> Este documento registra, paso a paso, todo lo que se hizo para instalar y configurar ROS 2 Jazzy en una Raspberry Pi 5 con Ubuntu 24.04. La idea es que cualquier persona hispanohablante pueda repetir el proceso sin perderse.



---



\## 📅 Fecha

(Completar cuando se ejecute en la Raspberry Pi)



\## 🖥️ Equipo y SO

\- Hardware: Raspberry Pi 5

\- Sistema operativo: Ubuntu 24.04 LTS (arm64)

\- ROS 2: Jazzy (perfil `ros-base`)



\## 🛠️ Pasos ejecutados



1\. Actualización del sistema:



sudo apt update \&\& sudo apt upgrade -y



2\. Instalación de herramientas base:



3\. Adición de repositorios y claves de ROS 2.

4\. Instalación de ROS 2 Jazzy (`ros-jazzy-ros-base`).

5\. Configuración del entorno en `~/.bashrc`.

6\. (Opcional) Instalación de dependencias útiles:



sudo apt install python3-colcon-common-extensions python3-pip -y



\## ✅ Verificación (pendiente hasta tener la Raspberry)

\- Comando:



ros2 --version

ros2 topic list



\- Resultado esperado:

\- Muestra la versión de ROS 2 Jazzy instalada.

\- No aparecen errores al ejecutar los comandos.



\## 🧩 Próximos pasos

\- Crear y probar un nodo de ejemplo (talker/listener).

\- Documentar errores comunes y cómo resolverlos.

\- Preparar scripts para automatizar pruebas.



