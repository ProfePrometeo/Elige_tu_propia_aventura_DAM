# Mejoras Realizadas al Script

## 1. Transición de Batch a PowerShell
El script original, que estaba escrito en Batch, ha sido reescrito para PowerShell. Algunas de las mejoras incluyen:

- Uso de `Clear-Host` para limpiar la pantalla.
- Uso de `Write-Host` para imprimir texto con colores y formato.
- Manejo de entradas con `Read-Host` para capturar las decisiones del jugador.

## 2. Mejoras en la Gestión de Colores
En PowerShell, se ha mejorado la visibilidad del juego utilizando diferentes colores para las distintas secciones:

- **Colores Definidos**: Se han definido variables para los colores, como `$ColorLibrary`, `$ColorForest`, `$ColorFighting`, `$ColorEscaping`, y `$ColorEndGame` para mejorar la estética visual y organizar el código.

## 3. Reemplazo de `goto` con Funciones
El flujo de control se ha reestructurado utilizando funciones en lugar de `goto` (que no es compatible con PowerShell):

- **Funciones**: Cada escenario ahora se maneja con una función separada, por ejemplo: `Goto-Biblioteca`, `Goto-LuchaEncapuchado`, `Goto-HuirBiblioteca`, etc.
- **Funciones Finales**: Los finales del juego ahora son funciones específicas como `Goto-Final1`, `Goto-Final2`, etc.

## 4. Manejo de Errores
En el script de PowerShell, se agregó un manejo básico de errores para asegurarse de que las decisiones del jugador sean válidas:

- **Validación de Entrada**: Se valida la entrada del jugador (1 o 2) en cada decisión. Si se ingresa una opción no válida, el script se detiene con un mensaje de error.

## 5. Uso de Colores en los Mensajes
Se mejoró la experiencia visual con colores, utilizando `-ForegroundColor` para cambiar el color de los mensajes:

- **Colores por Sección**: Cada sección del juego tiene un color específico para mejorar la inmersión:
  - **Biblioteca**: Amarillo oscuro (`DarkYellow`)
  - **Bosque**: Verde (`Green`)
  - **Lucha**: Rojo (`Red`)
  - **Escape**: Cian (`Cyan`)
  - **Finales**: Gris oscuro (`Gray`) para los finales trágicos, y colores llamativos como Magenta para el final alternativo.

## 6. Estructura del Juego Mejorada
El flujo de la historia se maneja a través de funciones bien definidas que encapsulan cada decisión importante y sus consecuencias. Esto mejora la legibilidad del código y facilita la adición de nuevas funcionalidades en el futuro.

## 7. Expansión de la Historia
La historia ha sido estructurada para proporcionar diferentes finales, que se alcanzan según las decisiones tomadas por el jugador:

- **Finales Alternativos**: Existen múltiples finales que dependen de las elecciones del jugador, como `Final1`, `Final2`, `Final3`, y `Final4`.

## 8. Uso de `Exit` para Salir del Juego
Se utiliza el comando `Exit` al final de cada función de finalización para salir del script de manera controlada.

---

Este archivo detalla las mejoras principales que se han realizado en la transición del juego de Batch a PowerShell, con un enfoque en la mejora de la experiencia de usuario y la optimización del código.
