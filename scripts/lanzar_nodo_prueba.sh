#!/bin/bash

echo "📡 Lanzando nodo de prueba en ROS 2 Jazzy..."

# 🧠 Cargar el entorno de ROS 2
source /opt/ros/jazzy/setup.bash

# 🚀 Ejecutar nodo de prueba (talker)
ros2 run demo_nodes_cpp talker

# 📝 Este script:
# - Carga el entorno de ROS 2
# - Lanza un nodo de ejemplo (talker), que publica mensajes en el topic /chatter
