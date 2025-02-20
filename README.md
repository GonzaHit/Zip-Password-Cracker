# Zip-Password-Cracker
Este script en Bash intenta descomprimir un archivo ZIP protegido por contraseña utilizando un diccionario de contraseñas. Lee cada contraseña del diccionario y la prueba con el archivo ZIP hasta encontrar la correcta.

\#\# Requisitos

\- Tener Bash instalado.  
\- Tener el archivo ZIP protegido por contraseña.  
\- Tener un diccionario de contraseñas (por ejemplo, rockyou.txt).

\#\# Uso

\#\#\# Clona el repositorio

\`\`\`bash  
git clone[ \<URL\_del\_repositorio\>  ](https://github.com/GonzaHit/Zip-Password-Cracker.git)
cd \<Zip-Password-Cracker>

Asigna permisos de ejecución al script  
Bash  
chmod \+x descomprimir\_zip.sh

Ejecuta el script  
Bash  
./descomprimir\_zip.sh

Ejemplo de Script  
Bash  
\#\!/bin/bash

archivo\_zip="secretitopicaron.zip"  
diccionario="/usr/share/wordlists/rockyou.txt"

while IFS= read \-r password; do  
  unzip \-P "$password" "$archivo\_zip" \-d . &\> /dev/null  
  if \[ $? \-eq 0 \]; then  
    echo "¡Contraseña encontrada\!: $password"  
    exit 0  
  fi  
done \< "$diccionario"

echo "No se encontró ninguna contraseña válida."
Ejecuta el script
Bash
./descomprimir_zip.sh

Ejemplo de Script
Bash
#!/bin/bash

archivo_zip="secretitopicaron.zip"
diccionario="/usr/share/wordlists/rockyou.txt"

while IFS= read -r password; do
  unzip -P "$password" "$archivo_zip" -d . &> /dev/null
  if [ $? -eq 0 ]; then
    echo "¡Contraseña encontrada!: $password"
    exit 0
  fi
done < "$diccionario"

echo "No se encontró ninguna contraseña válida."


