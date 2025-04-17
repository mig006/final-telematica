# Trabajo Final
## Abel Garcia - Telematica - 2025-1
Instrucciones:

- En la carpeta terraform estan los archivos necesarios para desplegar una vpc con el EC2 que contendrá el servidor web.
- Ya desplegado el VPC, necesitamos desplegar una maquina que sirva como servidor para Jenkins. Hecho esto entramos al dashboard con la IP del servidor Jenkins en el puerto 8080 y creamos un trabajo pipeline que se ejecute cada vez que hacemos un commit en el repositorio. Lo que tiene que ejecutar el trabajo está en el archivo Jenkinsfile
- Cuando Terraform termina de desplegar la VPC, nos va a dar la IP publica del servidor web. Esta IP la tenemos que reemplazar en el archivo Jenkinsfile, en los comandos para el scp y el ssh (lineas 9 y 10)
- Ya modificados los archivos, tenemos que hacer un commit para que los cambios se guarden. Al hacer el push, Jenkins se encargará de conectarse al servidor y ejecutar deploy.sh, que crea un container en Docker que contiene la pagina web, la cual podemos ver entrando a http://<IP_PUBLICA_SERVIDOR>/
