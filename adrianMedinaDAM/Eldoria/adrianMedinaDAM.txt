$host.UI.RawUI.WindowTitle = "El Destino de Eldoria"

Clear-Host
$host.UI.RawUI.BackgroundColor = "DarkYellow"
$host.UI.RawUI.ForegroundColor = "Black"
Clear-Host

Write-Host "================================"
Write-Host "      EL DESTINO DE ELDORIA"
Write-Host "================================"
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host ""
Write-Host "Donde comienzas tu busqueda"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"

$eleccion1 = Read-Host "Elige 1 o 2"

if ($eleccion1 -ne 1 -and $eleccion1 -ne 2) {
    Write-Host "Opción no válida. Por favor, elige 1 o 2."
    exit
}

function Biblioteca {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Yellow"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
    Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
    Write-Host ""
    Write-Host "Que haras"
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar mas pistas"

    $eleccion2 = Read-Host "Elige 1 o 2"

    if ($eleccion2 -ne 1 -and $eleccion2 -ne 2) {
        Write-Host "Opción no válida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion2 -eq "1") {
        LuchaEncapuchado
    } elseif ($eleccion2 -eq "2") {
        HuirBiblioteca
    }
}

function LuchaEncapuchado {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva."
    Write-Host "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:"
    Write-Host "Has cometido un error..."
    Final1
}

function HuirBiblioteca {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Green"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco."
    Write-Host "Decides partir de inmediato."
    Torre
}

function Bosque {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Green"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes."
    Write-Host "Una criatura sombria emerge de entre los arboles."
    Write-Host ""
    Write-Host "Que haras"
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"

    $eleccion3 = Read-Host "Elige 1 o 2"

    if ($eleccion3 -ne 1 -and $eleccion3 -ne 2) {
        Write-Host "Opción no válida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion3 -eq "1") {
        HablarCriatura
    } elseif ($eleccion3 -eq "2") {
        Esconderse
    }
}

function HablarCriatura {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Cyan"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "La criatura se presenta como un guardian del Cristal."
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host ""
    Write-Host "Le crees"
    Write-Host "1. Si, decides buscar otra pista"
    Write-Host "2. No, continuas a la torre"

    $eleccion4 = Read-Host "Elige 1 o 2"

    if ($eleccion4 -ne 1 -and $eleccion4 -ne 2) {
        Write-Host "Opción no válida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion4 -eq "1") {
        BuscarPista
    } elseif ($eleccion4 -eq "2") {
        Torre
    }
}

function Esconderse {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkGray"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Observas en silencio y ves a la criatura abrir un portal."
    Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
    Torre
}

function Torre {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Gray"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas."
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa magica."
    Write-Host ""
    Write-Host "Como intentas desactivarla"
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"

    $eleccion5 = Read-Host "Elige 1 o 2"

    if ($eleccion5 -ne 1 -and $eleccion5 -ne 2) {
        Write-Host "Opción no válida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion5 -eq "1") {
        FuerzaBruta
    } elseif ($eleccion5 -eq "2") {
        Mecanismo
    }
}

function FuerzaBruta {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion."
    Write-Host "Todo se vuelve blanco."
    Final2
}

function Mecanismo {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "White"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Encuentras un patron en el suelo y lo activas con cuidado."
    Write-Host "La trampa se desactiva y puedes tomar el Cristal."
    Write-Host ""
    Write-Host "Que haras ahora"
    Write-Host "1. Regresar a Eldoria"
    Write-Host "2. Usar el poder del Cristal para ti mismo"

    $eleccion6 = Read-Host "Elige 1 o 2"

    if ($eleccion6 -ne 1 -and $eleccion6 -ne 2) {
        Write-Host "Opción no válida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion6 -eq "1") {
        Final3
    } elseif ($eleccion6 -eq "2") {
        Final4
    }
}

function BuscarPista {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Green"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "Ignoras la Torre y sigues el consejo de la criatura."
    Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
    Final3
}

function Final1 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkGray"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "======================================"
    Write-Host "          FINAL: DESTINO SELLADO"
    Write-Host "======================================"
    Write-Host "Fuiste derrotado antes de conocer la verdad."
    Write-Host "El Cristal del Alba permanece perdido, y Eldoria se sume en la oscuridad."
    Pause
    exit
}

function Final2 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "======================================"
    Write-Host "      FINAL: EL FIN DEL REINO"
    Write-Host "======================================"
    Write-Host "El hechizo destruyo la torre y contigo dentro."
    Write-Host "Sin el Cristal del Alba, Eldoria colapsa en el caos."
    Pause
    exit
}

function Final3 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Green"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "======================================"
    Write-Host "       FINAL: EL HEROE DE ELDORIA"
    Write-Host "======================================"
    Write-Host "Regresas con el Cristal del Alba y restauras el equilibrio."
    Write-Host "El reino celebra tu valentia y tu nombre sera recordado para siempre."
    Pause
    exit
}

function Final4 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Magenta"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "======================================"
    Write-Host "     FINAL: EL NUEVO SEÑOR OSCURO"
    Write-Host "======================================"
    Write-Host "Decides usar el Cristal para aumentar tu poder."
    Write-Host "Te conviertes en un ser temido, gobernando con puno de hierro."
    Pause
    exit
}

#Lo pongo al final porque por alguna razón no me reconoce las funciones si están declaradas debajo (?)
if ($eleccion1 -eq "1") {
    Biblioteca
} elseif ($eleccion1 -eq "2") {
    Bosque
}