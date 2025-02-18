Los cambios que e realizado son:

- He cambiado `echo` por `Write-Host` para mostrar el texto en PowerShell.  
- He usado `Read-Host` en lugar de `set /p` para pedir las respuestas al usuario.  
- He reemplazado los `goto` por estructuras `if` y `switch`.  
- También añadi mejoras en la detección de errores para evitar entradas inválidas.  

Para ejecutarlo en powershell hay que poner lo siguiente:
   
   Set-ExecutionPolicy Unrestricted -Scope Process

Y después meterse en la ruta en la que se encuentre el archivo ps1 y poner en mi caso .\SamuelMartin1ºDAM.ps1
