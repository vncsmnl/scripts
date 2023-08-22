#!/bin/bash

echo "Conversor em lote de GIF para MOV com Canal Alfa"
echo "Criado por: vncsmnl"

for file in *.gif; do
    echo "Convertendo: \"$file\" para \"${file%.gif}.mov\""
    ffmpeg -i "$file" -c:v qtrle "${file%.gif}.mov" -hide_banner -v error -stats
done

echo "Conversão concluída!"
read -p "Pressione Enter para sair."
