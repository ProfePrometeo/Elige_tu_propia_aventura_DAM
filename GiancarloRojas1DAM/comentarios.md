En PowerShell se usa [Write-Output] en vez de [@echo]

El operador de expansión '@' no se puede usar para hacer referencia a variables en una expresión.
'@echo' solamente se puede usar como argumento para un comando. Para hacer referencia a variables en una expresión, use [Write-Output].

Con el símbolo [$] se pueden declarar variables, por ejemplo para hacer referencia a las opciones de elegir un camino [$choice1].

Error en la sintaxis de las condicionales.
En las condicionales se usa la estructura tal cual en java. Ej: [if(condición){instrucciones}].

[-eq] sería el equivalente a un [==], así como [-or] a [or]. Lo que sería de utilidad para condicionales.

Se puede hacer comentarios con el símbolo [#] en el script.

Se ha implentado bucles para controlar las elecciones y dirigir el rumbo de la historia