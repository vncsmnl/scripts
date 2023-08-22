#!/bin/bash

echo "Conversor em lote de MOV para WEBM"
echo "Criado por: vncsmnl"

for file in *.mov; do
    echo "Codificando: \"$file\" para \"${file%.mov}.webm\""
    ffmpeg -i "$file" -c:v libvpx-vp9 -b:v 0 -crf 15 "${file%.mov}.webm" -hide_banner -v error -stats
done

echo "Conversão concluída!"
read -p "Pressione Enter para sair."
