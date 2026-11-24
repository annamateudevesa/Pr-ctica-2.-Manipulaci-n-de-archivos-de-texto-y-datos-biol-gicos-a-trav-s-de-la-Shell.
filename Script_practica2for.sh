#!/bin/bash

# Este script busca a los pacientes que tienen la mutación BRAF V600E.

# Recorro todos los archivos .fasta de la carpeta, uno por uno.
for archivo in *.fasta
do
    # Leo cada archivo y busco la secuencia de la mutación.
    # -i permite encontrarla aunque esté en minúsculas.
    # -B 1 muestra también la línea anterior, que es la cabecera del paciente.
    cat "$archivo" | grep -i -B 1 "CTACAGAGAAATC"

# Quito los guiones que pone grep entre las coincidencias y las líneas de más.
# Guardo todas las cabeceras y secuencias en un solo archivo FASTA.
done | tr -ds '-' '\n' > "$1"

# Cuento los pacientes: cada cabecera empieza por >.
pacientes=$(grep -c '^>' "$1")

# Muestro en pantalla cuántos pacientes he encontrado.
echo "Pacientes candidatos encontrados: $pacientes"
