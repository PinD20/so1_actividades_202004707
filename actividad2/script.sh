#! /bin/sh

resultadoObtenido="$(curl https://api.github.com/users/$GITHUB_USER)"

textoSalida="Hola $(grep -oP '"login":\K"?[^,}]+' <<< $resultadoObtenido)"
textoSalida="$textoSalida, User ID: "
textoSalida="$textoSalida $(grep -oP '"id":\K"?[^,}]+' <<< $resultadoObtenido)"
textoSalida="$textoSalida. Cuenta creada el: "
textoSalida="$textoSalida $(grep -oP '"created_at":\K"?[^,}]+' <<< $resultadoObtenido)"

echo $textoSalida

fechaActual="$(date +%d-%m-%Y)"
directorio="/tmp/$fechaActual"
if [ ! -d $directorio ]
then
mkdir $directorio
fi
touch /tmp/$fechaActual/saludos.log

echo $textoSalida > /tmp/$fechaActual/saludos.log