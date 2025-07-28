# 🚀 ros2-rpi5-setup

Instalación paso a paso de ROS 2 Jazzy en Raspberry Pi 5 con Ubuntu 24.04.  
Incluye scripts, configuración de entorno y recomendaciones técnicas orientadas a usuarios hispanohablantes.  
Este repositorio busca facilitar la instalación limpia y reproducible de ROS 2 sobre arquitectura ARM64, documentando cada etapa con claridad.

---

## 🚀 Instalación de ROS 2 Jazzy en Raspberry Pi 5

Repositorio en español que documenta cómo instalar ROS 2 Jazzy en una Raspberry Pi 5 con Ubuntu 24.04 LTS (64-bit).  
Incluye scripts automatizados, bitácora técnica y estructura organizada para ayudar a principiantes y desarrolladores.

---

## 📚 Índice

1. Requisitos previos  
2. Instalación rápida  
3. Estructura del repositorio  
4. Documentación  
5. Créditos y licencia

---

## 🔧 Requisitos previos

- Raspberry Pi 5  
- Ubuntu 24.04 LTS (arm64)  
- Conexión a internet  
- Acceso a terminal con permisos `sudo`  
- Conocimiento básico de línea de comandos (ideal, pero no obligatorio)

---

## 🚀 Instalación rápida

```bash
git clone https://github.com/WolfrankVillamil/ros2-rpi5-setup.git
cd ros2-rpi5-setup/setup
bash install_ros2_jazzy.sh

💡 Nota: Se recomienda ejecutar el script directamente en la Raspberry Pi con Ubuntu 24.04 LTS instalado.

🗂 Estructura del repositorio

ros2-rpi5-setup/
├── docs/                         # Documentación escrita y bitácoras
│   └── bitacora_instalacion_ros2.md
├── scripts/                      # Scripts para lanzar nodos o pruebas
│   └── lanzar_nodo_prueba.sh
├── setup/                        # Instaladores y configuradores
│   └── install_ros2_jazzy.sh
├── README.md                     # Este archivo
├── LICENSE                       # Licencia MIT
└── .gitignore

📄 Documentación

Bitácora de instalación: docs/bitacora_instalacion_ros2.md

Script de instalación: setup/install_ros2_jazzy.sh

Script de prueba: scripts/lanzar_nodo_prueba.sh

🧠 ¿Por qué este repositorio?
Existen muchas guías en inglés, pero muy pocas en español que sean claras, limpias y adaptadas al entorno real de trabajo con Raspberry Pi 5 y ROS 2.
Esta documentación busca llenar ese vacío y servir como base para proyectos más grandes u otros desarrollos con ROS.

📝 Créditos y licencia
Creado por Wolfrank Villamil
Licencia: MIT
