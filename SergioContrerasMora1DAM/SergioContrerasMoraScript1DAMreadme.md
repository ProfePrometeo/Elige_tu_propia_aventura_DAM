## Migración de Script de CMD a PowerShell: El Destino de Eldoria
Este proyecto consiste en la migración de un juego de texto originalmente escrito en Batch (CMD) a PowerShell. A continuación, se describen los cambios realizados para mejorar la estructura, la funcionalidad y la experiencia del usuario.

## Cambios Realizados
1. Validación de Entradas
En el script original de Batch, no había validación para las entradas del usuario. Cualquier valor introducido por el jugador era aceptado, lo que podía generar resultados no deseados.
En PowerShell, se implementó la función ObtenerEleccionValida para asegurar que solo se acepten entradas válidas. Si el usuario ingresa una opción incorrecta, se le solicita que intente nuevamente.
2. Confirmación de Decisiones
El juego original no incluía un mecanismo para confirmar decisiones importantes antes de continuar, lo que podría llevar a elecciones no deseadas por parte del jugador.
En PowerShell, se agregó la función ConfirmarEleccion, que permite al jugador confirmar decisiones críticas antes de que el juego avance.
3. Reintentos de Elección
En Batch, si el jugador ingresaba una opción incorrecta, el juego simplemente continuaba sin ninguna retroalimentación ni reintentos.
En PowerShell, se implementó la función EleccionReintento, que permite al jugador intentar nuevamente hasta un número máximo de intentos. Si no se ingresa una opción válida después de varios intentos, el juego finaliza.
4. Manejo del Tiempo de Juego
El script original en Batch no medía el tiempo de juego.
En PowerShell, se agregó una funcionalidad que registra el tiempo transcurrido desde el inicio del juego y lo muestra al final como una métrica adicional.
5. Estructura Modular
El código de Batch estaba basado en un flujo secuencial con etiquetas (goto) y no ofrecía ninguna modularidad.
En PowerShell, se reestructuró el código en funciones independientes, mejorando la legibilidad y facilitando su mantenimiento. Las funciones permiten un control más organizado de las elecciones y eventos del jugador.

## Funciones Principales
ObtenerEleccionValida: Valida las entradas del jugador, garantizando que solo se acepten opciones válidas.
ConfirmarEleccion: Solicita al jugador confirmar decisiones importantes antes de continuar.
EleccionReintento: Permite al jugador hacer múltiples intentos al seleccionar una opción válida.
Registro de tiempo de juego: Mide el tiempo que el jugador ha dedicado al juego y lo muestra al finalizar.

## Conclusión
La migración a PowerShell ha mejorado la experiencia del jugador mediante una mejor validación de entradas, opciones de reintento, y un manejo más organizado del flujo del juego. Además, las funciones estructuradas permiten una mayor flexibilidad y facilidad de mantenimiento en comparación con el enfoque secuencial de Batch.