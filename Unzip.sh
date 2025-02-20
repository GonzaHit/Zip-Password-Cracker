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

