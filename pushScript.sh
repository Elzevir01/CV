#!/bin/bash

# Ruta al archivo "token"
ruta_token="/home/elzevir/Documentos/token/gtk.txt"

# Leer el archivo "token" y almacenar las líneas en variables
read -r usuario < "$ruta_token"
read -r contrasena < "$ruta_token"

# Agrega todos los archivos a git
git add .

# Commit con el argumento de linea de comando
git commit -m "$1"

# Establecer el token como credencial para Git
git config --global credential.helper store <<<"https://$usuario:$token@github.com"

# Ejecutar el comando "git push" con el usuario y la contraseña
git push -u origin master