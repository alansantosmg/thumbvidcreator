setlocal
@echo off
cls
echo.
echo "======================="
echo "  Criador de thumbs    "
echo "======================="
echo.
echo. 
echo "Criando thumbs:"
cd "%~dp0\entrada"
FOR %%f in (*.png) DO ( 
"%~dp0\program\magick.exe" "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% "%~dp0\program\btn\botao.png" -gravity center -compose over -composite "%~dp0\saida\thumb_%%f"
echo %%f 
)
FOR %%f in (*.jpg) DO ( 
"%~dp0\program\magick.exe" "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% "%~dp0\program\btn\botao.png" -gravity center -compose over -composite "%~dp0\saida\thumb_%%f"
echo %%f 
)
echo.
FOR %%f in (*.jpeg) DO ( 
"%~dp0\program\magick.exe" "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% "%~dp0\program\btn\botao.png" -gravity center -compose over -composite "%~dp0\saida\thumb_%%f"
echo %%f 
)
echo.
echo "Processo finalizado. Bye bye!"
echo.
pause
exit




