$host.UI.RawUI.WindowTitle = "La Aventura Pirata de la Isla del Invocador"

Clear-Host
$host.UI.RawUI.BackgroundColor = "DarkBlue"
$host.UI.RawUI.ForegroundColor = "White"
Clear-Host

Write-Host "============================================="
Write-Host " LA AVENTURA PIRATA DE LA ISLA DEL INVOCADOR"
Write-Host "============================================="
Write-Host ""
Write-Host "La tranquila vida de los piratas en las aguas de la Isla del Invocador se ve alterada cuando un antiguo mapa aparece."
Write-Host "El mapa muestra la ubicacion de un tesoro perdido: El Corazon de Acero."
Write-Host "Un capitan rival quiere arrebatarte el mapa y reclamar el tesoro para el."
Write-Host ""
Write-Host "Donde comienzas tu busqueda?"
Write-Host "1. La Taberna de Gragas"
Write-Host "2. El Bosque Sombrio"

$eleccion1 = Read-Host "Elige 1 o 2"

if ($eleccion1 -ne 1 -and $eleccion1 -ne 2) {
    Write-Host "Opcion no valida. Por favor, elige 1 o 2."
    exit
}

function Taberna {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Brown"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "En la taberna, un viejo pirata te da un susurro: El mapa que buscas esta en manos del Capitan Draven."
    Write-Host "Pero alguien mas en la taberna te esta observando con interes: un pirata desconocido."
    Write-Host ""
    Write-Host "Que haras?"
    Write-Host "1. Enfrentar al pirata desconocido"
    Write-Host "2. Hablar con el viejo pirata sobre el Capitan Draven"

    $eleccion2 = Read-Host "Elige 1 o 2"

    if ($eleccion2 -ne 1 -and $eleccion2 -ne 2) {
        Write-Host "Opcion no valida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion2 -eq "1") {
        LuchaPirata
    } elseif ($eleccion2 -eq "2") {
        HablarViejoPirata
    }
}

function LuchaPirata {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "Sacando tu arco y con tu espada larga, te enfrentas al pirata desconocido."
    Write-Host "El pirata es rapido y habil, pero tu eres mas astuto."
    Write-Host "Logras derrotarlo, pero antes de caer inconsciente, susurra:"
    Write-Host "Este no es el fin, Kindred..."
    Final1
}

function HablarViejoPirata {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Yellow"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "El viejo pirata te ofrece informacion valiosa sobre el Capitan Draven."
    Write-Host "Te revela que Draven esta buscando un antiguo artefacto que te da ventaja: La vara de las edades."
    Write-Host ""
    Write-Host "Que haras?"
    Write-Host "1. Ir en busca de la vara de las edades"
    Write-Host "2. Ir directamente a enfrentarte con el Capitan Draven"

    $eleccion3 = Read-Host "Elige 1 o 2"

    if ($eleccion3 -ne 1 -and $eleccion3 -ne 2) {
        Write-Host "Opcion no valida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion3 -eq "1") {
        BuscarVaraEdades
    } elseif ($eleccion3 -eq "2") {
        EnfrentamientoDraven
    }
}

function BuscarVaraEdades {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Purple"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "Sigues el mapa hacia una cueva secreta donde encuentras la vara de las edades."
    Write-Host "Este artefacto tiene el poder de desactivar las trampas del Capitan Draven."
    Write-Host "Con la vara de las edades en tu poder, te diriges al barco de Draven para enfrentarlo."
    EnfrentamientoDraven
}

function EnfrentamientoDraven {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkRed"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "Llegas al barco del Capitan Draven, donde una feroz batalla comienza."
    Write-Host "Con la vara de las edades, logras desactivar las trampas, pero Draven es un rival formidable."
    Write-Host "La batalla es intensa, pero finalmente, logras derrotarlo y reclamar el Corazon de Acero."
    Write-Host ""
    Write-Host "Que haras ahora?"
    Write-Host "1. Regresar a tu tripulacion con el tesoro"
    Write-Host "2. Usar el Corazon de Acero para tomar el control del mar"

    $eleccion4 = Read-Host "Elige 1 o 2"

    if ($eleccion4 -ne 1 -and $eleccion4 -ne 2) {
        Write-Host "Opcion no valida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion4 -eq "1") {
        Final2
    } elseif ($eleccion4 -eq "2") {
        Final3
    }
}

function Bosque {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkGreen"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "El Bosque Sombrio esta lleno de criaturas misteriosas y sonidos extranos."
    Write-Host "De repente, un grupo de piratas enemigos aparece para detener tu avance."
    Write-Host ""
    Write-Host "Que haras?"
    Write-Host "1. Pelear con ellos"
    Write-Host "2. Intentar huir y buscar una ruta alternativa"

    $eleccion5 = Read-Host "Elige 1 o 2"

    if ($eleccion5 -ne 1 -and $eleccion5 -ne 2) {
        Write-Host "Opcion no valida. Por favor, elige 1 o 2."
        exit
    }

    if ($eleccion5 -eq "1") {
        LuchaPiratas
    } elseif ($eleccion5 -eq "2") {
        HuirBosque
    }
}

function LuchaPiratas {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "Los piratas te rodean, pero logras abrirte paso luchando con valentia."
    Write-Host "A pesar de la gran cantidad, tu y tu Matakrakens sois imbatibles."
    Write-Host "Sin embargo, el precio es alto, y caes agotado al suelo."
    Final4
}

function HuirBosque {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkGray"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "Logras escapar sin que los piratas te sigan, pero ahora estas mas lejos del tesoro."
    Write-Host "La busqueda sera mas dificil, pero decides seguir adelante."
    BuscarVaraEdades
}

function Final1 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Black"
    $host.UI.RawUI.ForegroundColor = "Red"
    Clear-Host

    Write-Host "======================================"
    Write-Host "       FINAL: EL PIRATA CAiDO"
    Write-Host "======================================"
    Write-Host "Fuiste derrotado antes de conseguir el Corazon de Acero."
    Write-Host "La Isla del Invocador sigue siendo un lugar oscuro y peligroso."
    Pause
    exit
}

function Final2 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Gold"
    $host.UI.RawUI.ForegroundColor = "Black"
    Clear-Host

    Write-Host "======================================"
    Write-Host "    FINAL: EL TESORO RESTAURADO"
    Write-Host "======================================"
    Write-Host "Regresas con el Corazon de Acero y te conviertes en el heroe de los mares."
    Write-Host "Tu tripulacion te aclama y la leyenda de tu aventura sera contada por generaciones."
    Pause
    exit
}

function Final3 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "DarkMagenta"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "======================================"
    Write-Host "       FINAL: EL SENOR DE LOS MARES"
    Write-Host "======================================"
    Write-Host "Usas el Corazon de Acero para tomar el control absoluto del mar."
    Write-Host "Te conviertes en el temido Capitan del Oceano, gobernando todas las islas en el archipélago Riot."
    Pause
    exit
}

function Final4 {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = "Red"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host

    Write-Host "======================================"
    Write-Host "     FINAL: EL PIRATA SOLITARIO"
    Write-Host "======================================"
    Write-Host "Caiste en la lucha, pero tu nombre sera recordado como el pirata mas feroz."
    Pause
    exit
}

#Lo pongo al final porque por alguna razon no me reconoce las funciones si estan declaradas debajo (?)
if ($eleccion1 -eq "1") {
    Taberna
} elseif ($eleccion1 -eq "2") {
    Bosque
}
