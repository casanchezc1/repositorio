#!/bin/bash
clear
echo "==== TALLER 2: Creación de Archivos y Directorios ===="

echo "Creando archivos numerados..."
for i in {1..10}; do
  touch "archivo_$i"
done
echo "Archivos creados: archivo_1 ... archivo_10"

echo "Creando directorios proyecto_A a proyecto_E..."
for letra in {A..E}; do
  mkdir -p "proyecto_$letra"
done

echo "Creando archivos combinados (.txt y .pdf)..."
for num in {1..3}; do
  for letra in {a..c}; do
    touch "archivo_${num}${letra}.txt" "archivo_${num}${letra}.pdf"
  done
done

echo "Creando estructura de proyectos..."
mkdir -p projects/{dev,prod}/{config1,config2,config3,logs}
echo "Estructura creada correctamente."

echo "==== Fin del Taller 2 ===="
