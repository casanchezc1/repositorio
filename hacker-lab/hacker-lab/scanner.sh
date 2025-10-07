#!/bin/bash

# Escaneo de archivos sospechosos en el sistema
echo "Iniciando el escaneo..."

# Busca archivos que contengan la palabra 'password'
grep -ril "password" /etc /var

# Busca archivos con permisos de ejecución para todos
find /var -type f -perm -111 2>/dev/null

echo "Escaneo completado."