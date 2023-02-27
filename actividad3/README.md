# Bug encontrado en frontend

El problema encontrado en la parte del frontend de la aplicación se trata de que al cargar una URL específica se obtiene un error 404.

Este error se debe a que al intenar acceder directamente a una URL, ngnix trata de encontrar un archivo que contenga el nombre de esa URL y debido a que el único archivo que contiene el proyecto es el llamado index.html, nunca se encuentra el archivo buscado y se retorna como respuesta un error 404. 

Para solucionar este error es necesario agregar la siguiente configuración al servidor nginx en un archivo default.conf:

``` 
server {
    listen 80 default;
    root /usr/share/nginx/html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
```
Esta configuración hace que al no encontrar un archivo con el nombre de la URL indicada, esta se busque dentro del archivo index.html

Para agregar esta configuración, en el archivo nginx.Dockerfile se debe agregar la siguiente línea de código:

```
COPY default.conf /etc/nginx/conf.d/default.conf
```

Con esta línea de código se copia el archivo de la configuración a la ruta del contenedor para que nginx pueda leer dicha configuración y solucionar el direccionamiento de URLs.



Ambos archivos (default.conf y nginx.Dockerfile) se encuentran en la carpeta actual para que puedan ser leídos con mayor comodidad.