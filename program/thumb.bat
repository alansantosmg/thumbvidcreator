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
cd ..\entrada
FOR %%f in (*.png) DO ( 
..\program\magick.exe "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% ..\program\btn\botao.png -gravity center -compose over -composite ..\saida\thumb_"%%f"
echo %%f 
)
FOR %%f in (*.jpg) DO ( 
..\program\magick.exe "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% ..\program\btn\botao.png -gravity center -compose over -composite ..\saida\thumb_"%%f"
echo %%f 
)
echo.
FOR %%f in (*.jpeg) DO ( 
..\program\magick.exe "%%f" -thumbnail "535x305^" -gravity center -extent 535x305 -fill black -colorize 50%% ..\program\btn\botao.png -gravity center -compose over -composite ..\saida\thumb_"%%f"
echo %%f 
)
echo.
echo "Processo finalizado. Bye bye!"
echo.
pause
exit




