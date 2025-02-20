Para tranformar este script de .bat a .ps1 he buscado información sobre todos 
los comandos que se usaban en el script original, y qué comandos podrían realizar 
las mismas tareas en PowerShell. 
He encontrado la mayoría de la información de comandos y sintaxis de PowerShell 
en la página oficial de microsoft.

   CMD                            PowerShell  
1. @ECHO OFF --> Este comando se encarga de que sólo se impriman por pantalla 
                 aquellas líneas del script que no tienen un ECHO a su comienzo.
                 Por ejemplo, si no tuviesemos un ECHO OFF, se podrían imprimir 
                 por pantalla los comandos de selección de color. 
                 En PowerShell sin embargo, esto no es necesario, ya que no se 
                 imprime nada por pantalla a no ser que se especifique lo contrario. 
                 Para esto, hay varios comandos, pero el que acabé eligiendo es Write-Host.

2. TITLE   -->   $Host.UI.RawUI.WindowTitle = "Titulo deseado". 
                 El comando es ligeramente distinto, pero funciona de una forma similar, 
                 le asigna un nombre nuevo a la ventana de PowerShell que se está usando.

3. CLS    -->   Clear-Host
                Clear-Host tiene el mismo efecto que CLS, ambos comandos limpian todo el texto
                en la consola que sea anterior a la ejecución del comando.

4. color  -->   $host.ui.rawui.ForegroundColor = "color deseado"
                Este comando cambia todo el color del texto de la consola hasta que se cambia 
                de nuevo,a diferencia de, por ejemplo, si se cambia con -ForegroundColor [color deseado], 
                en un Write-Host, el color cambiará, pero sólo en esa línea. Habrá que cambiarlo
                el mismo comando y especificando otro color. 

5. ECHO   -->   Write-Host 
                ECHO y Write-Host consiguen lo mismo, como he referenciado anteriormente, especifican qué 
                líneas de código queremos que se impriman por pantalla y queden visibles para un 
                determinado usuario. EN el caso de Write-Host, es necesario que el texto que siga al comando 
                se encuentre entre comillas. A diferencia de otras opciones para imprimir texto por pantalla,
                Write-Host permite el uso de -ForegroundColor y BackgroundColor + [color deseado], que permiten 
                la personalización del color de texto y del fondo de la consola, propiedad que consideré relevante 
                para este ejercicio (aunque acabé usando también otro comando diferente para cambiar los colores)

6. set /p choice1=Elige 1 o 2 --> $choice1 = Read-Host -Prompt "Elige 1 o 2: "
                                  En PowerShell, en vez de declarar la variable con set, se declara con $.
                                  Y en vez de usar /p para pedir un prompt, 
                                  se usa Read-Host -Prompt + "question/choice". 

7. if "%choice1%" == "1" --> if ($choice2 -eq 1) {}
                             La estructura del if, para empezar es diferente, se usan paréntesis, y llaves. 
                             Para la parte de la igualdad, en vez de usar iguales, usamos -eq (equals). 
                             Y en la igualdad, se debe poner el $ otra vez. 

8. ECHO.   -->      ""
                     ECHO. imprime una línea vacía en la consola. Puede ser útil para organizar el texto que se imprima,
                     concretamente, dejando espacios entre líneas y líneas.


PAUSE       -->      Start-Sleep -Seconds [segundos de pausa deseados]
                     Pause es un comando que pausa la ejecución de código en un script de cmd hasta que se pulsa alguna tecla,
                     tras buscar algo similar en PowerShell, no encontré nada exáctamente igual, la diferencia que podemos encontar
                     en Start-Sleep es que se especifica una cantidad de segundos, y espera hasta que estos pasen, no espera un input de tecla.
                     Si no especificamos los segundos, se los pedirá al usuario, y después de que introduzca la cantidad que sea, funcionará
                     con el comportamiento estándar.


10. goto y :BLOQUE --> if(){} elseif(){} y else{}
                      Para organizar mejor el código, en PowerShell se usan condicionales de este tipo para ejecutar 
                      bloques de código concretos. Aunque se podría hacer incluyendo funciones dentro de estas estructuras, 
                      y no repetir los bloques de código, haceiendo el script más eficiente. 
                      Sin embargo, por mucho que me gustaría implementar funciones, y concretamente, crearlas en archivos de ps1
                      separados, e importarlos, consiguiendo así que cada uno de los diferentes archivos sean lo más ligeros y 
                      eficientes posible, tengo que terminar el trabajo de progrtamación en el que has visto trabajar a Adri, 
                      y voy mal de tiempo. Así que me conformo con que el script funcione, aunque sea tan largo como es.

11. EXIT --> Exit
             Este comando, al igual que EXIT en cmd, este comando cierra la consola de PowerShell.


Tolerancia a errores: 
Realmente el único cambio real que controla los errores son los else{},
que controlan que las elecciones de los prompts tienen que ser 1 o 2. 
Una mejor forma de realizar este mismo control sería usando un bucle para que cuando se introdujese mal
el input, se tuviese que introducir de nuevo. En mi caso, lo único que pasa es que el script termina.


Nota final --> Tambnién cambié varias letras 'ñ' por 'ny', ya que la consola no era capaz de leer la letra.