@echo off
echo Conversor em lote de GIF para MOV com Canal Alfa
echo Criado por: vncsmnl

for %%i in (*.gif) do (
    echo Convertendo: "%%~nxi" para "%%~ni.mov"
    ffmpeg -i "%%~fi" -c:v qtrle "%%~dpni.mov" -hide_banner -v error -stats
)

echo Conversão concluída!
pause
