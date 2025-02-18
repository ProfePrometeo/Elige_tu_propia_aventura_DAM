@echo off
:Inicio
title El Destino de Eldoria
cls
color 06
echo ================================
echo      EL DESTINO DE ELDORIA
echo ================================
echo.
echo El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba.  
echo Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos.  
echo Solo una persona puede recuperarlo: tu.  
echo.
echo Donde comienzas tu busqueda
echo 1. La Biblioteca de los Sabios
echo 2. El Bosque de las Sombras
set /p choice1=Elige 1 o 2: 
if "%choice1%"=="1" ( goto Biblioteca )
if "%choice1%"=="2" ( goto Bosque )
echo opcion no valida.
pause
goto Inicio
:Biblioteca
cls
color 0E
echo En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco.  
echo Una figura encapuchada te observa y susurra: No deberias estar aqui...
echo.
echo Que haras
echo 1. Enfrentarlo con tu espada
echo 2. Huir y buscar mas pistas
set /p choice2=Elige 1 o 2: 

if "%choice2%"=="1"( goto LuchaEncapuchado )
if "%choice2%"=="2" ( goto HuirBiblioteca )
echo opcion no valida.
pause
goto Biblioteca
:LuchaEncapuchado
cls
color 04
echo Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva.  
echo Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:  
echo Has cometido un error...
goto Final1

:HuirBiblioteca
cls
color 2E
echo Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco.  
echo Decides partir de inmediato.
goto Torre

:Bosque
cls
color 0A
echo El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes.  
echo Una criatura sombria emerge de entre los arboles.
echo.
echo Que haras
echo 1. Hablar con la criatura
echo 2. Esconderte y observar
set /p choice3=Elige 1 o 2: 

if "%choice3%"=="1" goto HablarCriatura
if "%choice3%"=="2" goto Esconderse
echo opcion no valida.
pause
goto Bosque


:HablarCriatura
cls
color 0B
echo La criatura se presenta como un guardian del Cristal.  
echo Te advierte que la Torre del Eco es una trampa mortal.
echo.
echo Le crees
echo 1. Si, decides buscar otra pista
echo 2. No, continuas a la torre
set /p choice4=Elige 1 o 2: 

if "%choice4%"=="1" goto BuscarPista
if "%choice4%"=="2" goto Torre
echo opcion no valida.
pause
goto HablarCriatura

:Esconderse
cls
color 08
echo Observas en silencio y ves a la criatura abrir un portal.  
echo Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco.
goto Torre

:Torre
cls
color 07
echo La Torre del Eco es un lugar oscuro y en ruinas.  
echo Encuentras el Cristal del Alba, pero hay una trampa magica.
echo.
echo Como intentas desactivarla
echo 1. Con fuerza bruta
echo 2. Buscando un mecanismo oculto
set /p choice5=Elige 1 o 2: 

if "%choice5%"=="1" goto FuerzaBruta
if "%choice5%"=="2" goto Mecanismo
echo opcion no valida.
pause
goto Torre

:FuerzaBruta
cls
color 04
echo Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion.
echo Todo se vuelve blanco.
goto Final2

:Mecanismo
cls
color 0F
echo Encuentras un patron en el suelo y lo activas con cuidado.  
echo La trampa se desactiva y puedes tomar el Cristal.
echo.
echo Que haras ahora
echo 1. Regresar a Eldoria
echo 2. Usar el poder del Cristal para ti mismo
set /p choice6=Elige 1 o 2: 

if "%choice6%"=="1" goto Final3
if "%choice6%"=="2" goto Final4
echo opcion no valida.
pause
goto Mecanismo

:BuscarPista
cls
color 0A
echo Ignoras la Torre y sigues el consejo de la criatura.  
echo Descubres que el verdadero Cristal estaba oculto en el Templo del Alba.
goto Final3

:Final1
cls
color 08
echo ======================================
echo          FINAL: DESTINO SELLADO
echo ======================================
echo Fuiste derrotado antes de conocer la verdad.  
echo El Cristal del Alba permanece perdido, y Eldoria se sume en la oscuridad.
pause
exit

:Final2
cls
color 04
echo ======================================
echo      FINAL: EL FIN DEL REINO
echo ======================================
echo El hechizo destruyo la torre y contigo dentro.  
echo Sin el Cristal del Alba, Eldoria colapsa en el caos.
pause
exit

:Final3
cls
color 2E
echo ======================================
echo       FINAL: EL HEROE DE ELDORIA
echo ======================================
echo Regresas con el Cristal del Alba y restauras el equilibrio.  
echo El reino celebra tu valentia y tu nombre sera recordado para siempre.
pause
exit

:Final4
cls
color 05
echo ======================================
echo     FINAL: EL NUEVO SEÑOR OSCURO
echo ======================================
echo Decides usar el Cristal para aumentar tu poder.  
echo Te conviertes en un ser temido, gobernando con puno de hierro.
pause
exit

