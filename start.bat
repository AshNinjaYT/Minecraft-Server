@echo off
title Minecraft Server + Git Sync

echo ------------------------------------------
echo [GIT] 1. Buscando actualizaciones...
echo ------------------------------------------
git pull

echo.
echo ------------------------------------------
echo [MC] 2. Iniciando Servidor...
echo ------------------------------------------
:: Tu comando original de arranque
java -Xmx6G -jar fabric-server-launch.jar nogui

echo.
echo ------------------------------------------
echo [GIT] 3. Servidor cerrado. Guardando cambios...
echo ------------------------------------------
git add .
git commit -m "AutoBackup: %date% %time%"
git push

echo.
echo [FIN] Todo listo. Cerrando...
pause