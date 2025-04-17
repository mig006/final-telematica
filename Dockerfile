# Usar la imagen oficial de Nginx como base
FROM nginx:alpine

# Copiar los archivos de tu sitio web al contenedor
COPY ./public_html /usr/share/nginx/html/

# Exponer el puerto 80 para el servidor web
EXPOSE 80

# Nginx ya está configurado para ejecutarse como proceso principal
