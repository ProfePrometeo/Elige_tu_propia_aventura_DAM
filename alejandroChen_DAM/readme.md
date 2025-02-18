# Batch a PowerShell

## Encabezado y Estructura
- He cambiado toda la estructura de batch a powershell con sus correspondientes códigos:
echo a Write-Host, Read-Host en lugar de set /p, etc 

## Condicionales y Control de Flujo
- En Batch usé `if` y `goto`.
- En PowerShell utilicé `switch` y `goto`.

## Colores y Formato
- En Batch los colores se definieron con `color`.
- En PowerShell los colores se definieron con `$host.ui.RawUI.ForegroundColor` y `$host.ui.RawUI.BackgroundColor`.

Además, he añadido manejo de errores con una función llamada `ElegirOpcion` para asegurar que las entradas del usuario sean, en caso de que no se introduzca un número correcto, se cierra el programa.
