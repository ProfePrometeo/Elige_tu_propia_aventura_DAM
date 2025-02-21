*Se implementó una función de validación para asegurar que el usuario solo pueda ingresar opciones válidas (1 o 2). Si se ingresa una opción incorrecta, el programa solicita nuevamente la entrada.
Motivo: Evitar entradas no válidas que pudieran interrumpir el flujo del juego.


*Se utilizó un bucle do...while para que el script repita la solicitud de elección hasta que el usuario ingrese una opción válida.
Motivo: Garantizar que el flujo no avance con entradas inválidas, mejorando la interacción.
Adaptación a PowerShell:

*Se reemplazaron las variables de Batch (set /p) por la sintaxis de PowerShell ($variable = Read-Host).
Motivo: PowerShell utiliza una forma diferente para manejar las variables, y este cambio asegura que el script funcione correctamente en el nuevo entorno.


*Se implementaron mensajes de error claros en caso de que el usuario ingrese una opción no válida.
Motivo: Mejorar la experiencia del usuario, proporcionando retroalimentación en tiempo real sobre entradas incorrectas.
Mejora en la Visualización:

*Se utilizaron colores en los textos de salida para hacer el juego más visualmente atractivo.
Motivo: Mejorar la experiencia de usuario y hacer que el juego sea más envolvente y claro.