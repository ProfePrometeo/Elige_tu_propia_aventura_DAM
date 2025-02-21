Migración a PowerShell – Mejoras y Cambios  
Denis Beuka 1ºDAM 

He mejorado la tolerancia de errores en la entrada del usuario mediante la implementación de una función Get-UserChoice.  Ahora, en lugar de aceptar cualquier entrada y correr el riesgo de errores en la ejecución, el programa valida que el usuario ingrese solo 1 o 2.   

Si se introduce un valor incorrecto, el sistema mostrará un mensaje de advertencia y pedirá nuevamente la opción. Esto garantiza que el juego continúe sin interrupciones inesperadas y mejora la experiencia del usuario al evitar bloqueos o respuestas inválidas.  

Además, se optimizó la organización del código para que sea más claro y fácil de mantener. 