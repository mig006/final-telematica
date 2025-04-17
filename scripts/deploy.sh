#!/bin/bash

# Navega al directorio de la aplicación
cd ~/app

# Construye la imagen Docker
docker build -t final_telematica .

# Detiene y elimina cualquier contenedor en ejecución con el mismo nombre
docker rm -f final_telematica_container || true

# Ejecuta el contenedor en segundo plano
docker run -d --name final_telematica_container -p 80:80 final_telematica
