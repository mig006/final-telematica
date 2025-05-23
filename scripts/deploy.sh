#!/bin/bash

# Navega al directorio de la aplicación
sudo usermod -aG docker ubuntu
cd ~/app

# Construye la imagen Docker#!/bin/bash
docker --version || { echo "Docker is not installed"; exit 1; }
docker build -t final_telematica . || { echo "Docker build failed"; exit 1; }


# Detiene y elimina cualquier contenedor en ejecución con el mismo nombre
docker rm -f final_telematica_container || true

# Ejecuta el contenedor en segundo plano
docker run -d --name final_telematica_container -p 80:80 final_telematica || { echo "Docker container creation failed"; exit 1; }
