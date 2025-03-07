# Función para obtener una elección válida del usuario
function ObtenerEleccionValida {
    param (
        [string]$mensaje,
        [string[]]$opcionesValidas
    )

    $input = ""
    do {
        $input = Read-Host $mensaje
        if ($opcionesValidas -contains $input) {
            return $input
        } else {
            Write-Host "Opción no válida. Intenta nuevamente."
        }
    } while ($true)
}

# Función para confirmar una elección importante del usuario
function ConfirmarEleccion {
    param (
        [string]$mensaje
    )

    $confirmacion = Read-Host "$mensaje (S/N)"
    if ($confirmacion -eq "S" -or $confirmacion -eq "s") {
        return $true
    } else {
        return $false
    }
}

# Función para manejar reintentos en elecciones del usuario
function EleccionReintento {
    param (
        [string]$mensaje,
        [string[]]$opcionesValidas,
        [int]$maxIntentos = 3
    )

    $intentos = 0
    do {
        $eleccion = Read-Host $mensaje
        if ($opcionesValidas -contains $eleccion) {
            return $eleccion
        } else {
            $intentos++
            Write-Host "Opción no válida. Intentos restantes: $($maxIntentos - $intentos)"
        }
    } while ($intentos -lt $maxIntentos)

    Write-Host "Has alcanzado el número máximo de intentos. El juego terminará."
    exit
}

# Función para registrar el tiempo de juego
$tiempoInicio = Get-Date

# Inicia el juego
Write-Host "===================================="
Write-Host "      EL DESTINO DE ELDORIA"
Write-Host "===================================="
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host "¿Dónde comienzas tu búsqueda?"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"

$choice1 = ObtenerEleccionValida "Elige 1 o 2" "1", "2"

if ($choice1 -eq "1") {
    # Opción Biblioteca
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
    Write-Host "Una figura encapuchada te observa y susurra: No deberías estar aquí..."
    Write-Host "¿Qué harás?"
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar más pistas"

    $choice2 = ObtenerEleccionValida "Elige 1 o 2" "1", "2"

    if ($choice2 -eq "1") {
        Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rápido y te esquiva."
        Write-Host "Lanza un hechizo, inmovilizándote. Antes de perder el conocimiento, escuchas:"
        Write-Host "Has cometido un error..."
        exit
    } else {
        Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicación exacta de la Torre del Eco."
        Write-Host "Decides partir de inmediato."
    }

} elseif ($choice1 -eq "2") {
    # Opción Bosque
    Write-Host "El bosque está envuelto en niebla. Encuentras un círculo de piedras brillantes."
    Write-Host "Una criatura sombría emerge de entre los árboles."
    Write-Host "¿Qué harás?"
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"

    $choice3 = ObtenerEleccionValida "Elige 1 o 2" "1", "2"

    if ($choice3 -eq "1") {
        Write-Host "La criatura se presenta como un guardián del Cristal."
        Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
        Write-Host "¿Le crees?"
        Write-Host "1. Sí, decides buscar otra pista"
        Write-Host "2. No, continúas a la torre"

        $choice4 = ObtenerEleccionValida "Elige 1 o 2" "1", "2"

        if ($choice4 -eq "1") {
            Write-Host "Ignoras la Torre y sigues el consejo de la criatura."
            Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
            exit
        } else {
            Write-Host "Decides seguir hacia la Torre del Eco."
        }

    } else {
        Write-Host "Observas en silencio y ves a la criatura abrir un portal."
        Write-Host "Sin dudar, te cuelas en él y apareces dentro de la Torre del Eco."
    }
}

# Continúa el juego según las elecciones del jugador...

# Calcular tiempo de juego
$tiempoJuego = (Get-Date) - $tiempoInicio
Write-Host "Tu tiempo de juego fue: $($tiempoJuego.TotalMinutes) minutos."
