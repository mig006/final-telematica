#!/usr/bin/env bash
set -e

# Parámetros
REPO_URL="https://github.com/abel8000000/final-telematica"
APP_DIR="/home/ubuntu/app"

# 1. Preparar directorio de la app
rm -rf "$APP_DIR"
git clone "$REPO_URL" "$APP_DIR"
cd "$APP_DIR"

# 2. Generar Dockerfile dinámico
cat > Dockerfile <<EOF
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install --production
EXPOSE 80
CMD ["npm", "start"]
EOF

# 3. Construir imagen
docker build -t mi-app:latest .

# 4. Limpiar contenedor anterior
docker rm -f mi-app || true

# 5. Desplegar nuevo contenedor
docker run -d \
  --name mi-app \
  -p 80:80 \
  mi-app:latest
