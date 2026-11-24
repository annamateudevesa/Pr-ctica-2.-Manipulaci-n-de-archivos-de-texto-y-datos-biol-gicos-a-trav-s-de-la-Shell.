README – PRÁCTICA 2: BIOINFORMÁTICA

1. Descripción del proyecto

El objetivo de esta práctica es identificar los pacientes que contienen la secuencia CTACAGAGAAATC, relacionada con la mutación BRAF V600E.

Para ello, he creado un script en Bash utilizando un bucle for que recorre los archivos FASTA, busca la mutación y guarda los pacientes candidatos en un nuevo archivo.

2. Datos de entrada

He utilizado cuatro archivos FASTA (hcu_1.fasta, hug.fasta, islafe.fasta y peset.fasta) que contienen un total de 40 pacientes.

Cada paciente tiene una cabecera que empieza por > y su secuencia de ADN en la siguiente línea.

Es importante que la secuencia completa esté escrita en una sola línea real, porque utilizo grep -B 1 para recuperar la cabecera. Si estuviera dividida en varias líneas, el script no funcionaría correctamente.

3. Script y ejecución

El script utiliza los siguientes comandos:

for: recorre todos los archivos .fasta.

cat: lee el contenido de cada archivo.

grep -i -B 1: busca la mutación sin distinguir mayúsculas y minúsculas y recupera la cabecera.

tr -ds '-' '\n': elimina los separadores y las líneas vacías.

grep -c '^>': cuenta los pacientes encontrados.

echo: muestra el resultado en la terminal.

Generalización: he utilizado $1 para que cualquier persona pueda elegir el nombre y la ubicación del archivo de salida sin modificar el código.

Para ejecutarlo, hay que situarse en la carpeta que contiene los FASTA y escribir:

bash ../script_forloop2.sh pacientes_candidatos_BRAF.fasta

Este ejemplo supone que el script está en la carpeta superior. El último argumento indica el nombre del archivo donde se guardarán los resultados.

4. Resultados

He encontrado 14 pacientes candidatos de los 40 analizados.

El script genera un archivo FASTA con la cabecera y la secuencia completa de cada paciente seleccionado. Además, muestra en la terminal el número total de candidatos encontrados.

5. Requisitos y limitaciones

He utilizado la terminal de macOS, Bash y los comandos cat, grep, tr y echo. Las versiones exactas no se han registrado.

Para añadir permisos de ejecución al script se puede utilizar chmod +x.

El script necesita archivos .fasta con la secuencia de cada paciente en una sola línea y debe ejecutarse desde la carpeta que contiene dichos archivos.

Además, hay que indicar el nombre del archivo de salida. La mutación buscada está escrita directamente en el código; únicamente he generalizado el archivo de resultados mediante $1.

6. Conclusión

Con esta práctica he aprendido a utilizar un bucle for para analizar varios archivos FASTA, buscar una secuencia de ADN, recuperar la información de los pacientes y contar los resultados.

También he aprendido a generalizar la salida de un script utilizando $1, de manera que pueda utilizarse sin modificar el nombre del archivo directamente en el código. 




