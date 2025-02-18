## El Destino de Eldoria
El Destino de Eldoria es un juego interactivo basado en texto, disponible en dos versiones: PowerShell y Batch. El juego sigue la historia del reino de Eldoria, que vive en paz gracias al Cristal del Alba. Sin embargo, tras la desaparición del Cristal, el reino cae en el caos y el jugador es el único capaz de recuperarlo. A lo largo de su aventura, el jugador deberá tomar decisiones que determinarán el destino del reino y si puede restaurar el equilibrio o si sucumbe a la oscuridad.

## Versiones del Juego
PowerShell
En la versión de PowerShell, se utilizan funciones y estructuras que permiten una mayor modularidad y control en la experiencia de juego:

## Funciones Utilizadas:
Write-ColoredText: Se emplea para mostrar texto con colores personalizados, mejorando la presentación visual.
Get-Choice: Permite capturar la elección del jugador y validar que la entrada esté dentro del rango de opciones permitidas, garantizando una experiencia fluida.
Características:
El código está más organizado y limpio gracias a las funciones, lo que permite expandir o modificar el juego con facilidad.
Se implementan validaciones para asegurar que el jugador elija opciones válidas (entre 1 y 2).
Los mensajes de texto están acompañados de colores para resaltar eventos clave y decisiones importantes.
Batch
La versión Batch, más simple, está basada en el uso de etiquetas y el comando goto para redirigir el flujo del juego. Aunque más rudimentario, ofrece una forma directa de interactuar con el jugador.

## Funciones Utilizadas:

set /p: Permite capturar la entrada del jugador.
goto: Se usa para navegar entre diferentes secciones del juego dependiendo de las elecciones del jugador.
Características:

Aunque no tiene tantas opciones de personalización como PowerShell, es más accesible para quienes busquen una versión más sencilla del juego.
Los colores se aplican de forma estática, asignando un color específico a cada escena o decisión.
No incluye validación de entradas, lo que puede generar errores si el jugador ingresa un valor incorrecto.
## Jugabilidad
El juego sigue una narrativa de toma de decisiones. El jugador comienza su aventura eligiendo entre dos posibles puntos de partida: La Biblioteca de los Sabios o El Bosque de las Sombras. A medida que avanza en el juego, se enfrenta a distintas situaciones en las que debe elegir cómo reaccionar. Las decisiones afectan la trama y conducen a distintos finales.

## Principales Decisiones y Ramas
Biblioteca de los Sabios: El jugador puede enfrentarse a una figura encapuchada o huir y buscar más pistas.
Bosque de las Sombras: El jugador se encuentra con una criatura sombría y debe decidir si hablar con ella o esconderse para observar sus movimientos.
Estas decisiones clave afectan los siguientes eventos, como cómo desactivar una trampa mágica en la Torre del Eco y si el jugador decide usar el poder del Cristal del Alba para sí mismo o restaurar el equilibrio en Eldoria.

## Finales del Juego
El destino del reino depende de las elecciones del jugador. Los finales principales son:

Final: Destino Sellado – El jugador es derrotado antes de poder descubrir la verdad detrás del Cristal del Alba.
Final: El Fin del Reino – Al intentar desactivar la trampa de la Torre del Eco con fuerza bruta, el jugador activa un hechizo de autodestrucción, destruyendo la torre y condenando a Eldoria.
Final: El Héroe de Eldoria – El jugador desactiva la trampa y usa el Cristal del Alba para restaurar el equilibrio del reino, siendo reconocido como el héroe.
Final: El Nuevo Señor Oscuro – El jugador usa el poder del Cristal del Alba para aumentar su poder y gobernar el reino con mano de hierro.
## Conclusión
El Destino de Eldoria es un juego interactivo que ofrece múltiples rutas y finales según las decisiones del jugador. La versión en PowerShell tiene más capacidad de personalización y control, especialmente a través de las funciones y la validación de entradas, mientras que la versión Batch es más accesible, pero menos flexible. Ambos enfoques permiten disfrutar de una narrativa envolvente, y cada elección tiene un impacto significativo en el desenlace del juego, asegurando que cada partida pueda ser diferente.