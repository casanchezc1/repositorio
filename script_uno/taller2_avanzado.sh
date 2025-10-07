#!/bin/bash
clear
echo "==== TALLER 2: Automatización y Variables Especiales ===="

echo "Creando estructura de archivos y carpetas..."
mkdir -p proyectos/{frontend,backend,docs}/{src,bin,logs}
touch proyectos/{frontend,backend}/src/{main,helper,test}.sh
echo "Estructura creada."

echo "---------------------------------------------"
echo "Variables especiales de Bash:"
echo "Opciones del shell (\$-): $-"
echo "Argumentos recibidos (\$@): $@"

echo "Ejecutando un proceso en segundo plano..."
sleep 3 &  # proceso en background
echo "PID del último proceso en background (\$!): $!"
echo "---------------------------------------------"

echo "Taller 2 completado exitosamente ✅"
