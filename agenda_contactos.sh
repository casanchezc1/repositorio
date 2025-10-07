carlos,3152905064
Jave,3179087345
#!/bin/bash

archivo="agenda_contactos.txt"

while true; do
    echo "======= AGENDA TELEFÓNICA ======="
    echo "1) Agregar contacto"
    echo "2) Consultar contacto"
    echo "3) Borrar contacto"
    echo "4) Listar contactos"
    echo "5) Ordenar por nombre"
    echo "6) Ordenar por teléfono"
    echo "7) Salir"
    echo "================================="
    read -p "Selecciona una opción: " opcion

    case $opcion in
        1)
            read -p "Nombre: " nombre
            read -p "Teléfono: " telefono
            echo "$nombre,$telefono" >> "$archivo"
            echo "Contacto agregado."
            ;;
        2)
            read -p "Nombre a buscar: " nombre
            grep -i "$nombre" "$archivo" || echo "No encontrado."
            ;;
        3)
            read -p "Nombre a eliminar: " nombre
            grep -vi "$nombre" "$archivo" > temp && mv temp "$archivo"
            echo "Contacto eliminado (si existía)."
            ;;
        4)
            echo "Contactos guardados:"
            cat "$archivo"
            ;;
        5)
            sort -f "$archivo"
            ;;
        6)
            sort -t ',' -k2 "$archivo"
            ;;
        7)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción inválida."
            ;;
    esac
done

