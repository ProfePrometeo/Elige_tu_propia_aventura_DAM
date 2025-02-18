# Mejora en la tolerancia a errores del código convertido a PowerShell

Este archivo contiene una descripción breve de las mejoras realizadas en el código convertido de CMD a PowerShell.

### Mejoras en la tolerancia a errores:

1. **Validación de entrada del usuario:**
   En el código original en CMD, el usuario tenía que elegir entre opciones específicas (1 o 2), pero no había una validación robusta para entradas incorrectas. En PowerShell, implementé la validación para asegurar que el valor ingresado por el usuario sea válido. Ahora, si el usuario ingresa algo que no es una opción válida, el programa solicita una nueva entrada sin fallar.

2. **Manejo de excepciones:**
   Aunque el código PowerShell no tiene excepciones complejas, se considera la posibilidad de manejar errores imprevistos mediante el uso de `try` y `catch` en una versión más avanzada. Esto ayudaría a prevenir fallos en caso de errores de ejecución como intentos de acceder a rutas no válidas o comandos desconocidos.

3. **Mensajes claros en caso de error:**
   Si se detecta una entrada no válida, el programa muestra un mensaje claro y solicita nuevamente la entrada del usuario, mejorando la experiencia del usuario y evitando que el script termine abruptamente.

### Implementación:

- Se añadió un ciclo de repetición con una condición de salida para asegurarse de que las opciones de elección del usuario sean válidas.
