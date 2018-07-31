 @echo off
 echo    #     #                #####  
 echo    #     # ###### #####  #     # 
 echo    #     # #      #    # #       
 echo    #     # #####  #    #  #####  
 echo     #   #  #      #####        # 
 echo      # #   #      #   #  #     # 
 echo       #    ###### #    #  ##### 

echo Verificador De IPS
set /p ip="Ingrese IP " \n
nmap.exe -n -sS -oN rip.txt %ip%   
cls
findstr /m "1433/tcp" rip.txt
cls
if %errorlevel%==0 (
    echo Servidor Listo!
) else (
    echo Servidor NO Listo!  
)
pause > nul