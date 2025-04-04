# El Destino de Eldoria - PowerShell Edition
function Mostrar-Titulo {
    Clear-Host
    Write-Host "===============================" -ForegroundColor Yellow
    Write-Host "     EL DESTINO DE ELDORIA     " -ForegroundColor Yellow
    Write-Host "===============================" -ForegroundColor Yellow
    Write-Host ""
}

function Pausa {
    Write-Host ""
    Read-Host -Prompt "Presiona ENTER para continuar..."
}

Mostrar-Titulo
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba." -ForegroundColor DarkYellow
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos." -ForegroundColor DarkYellow
Write-Host "Solo una persona puede recuperarlo: tú." -ForegroundColor DarkYellow
Write-Host ""
Write-Host "¿Dónde comienzas tu búsqueda?" -ForegroundColor Cyan
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$choice1 = Read-Host "Elige 1 o 2"

switch ($choice1) {
    "1" { Biblioteca }
    "2" { Bosque }
    default { Write-Host "Opción no válida"; exit }
}

function Biblioteca {
    Clear-Host
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco." -ForegroundColor Yellow
    Write-Host "Una figura encapuchada te observa y susurra: 'No deberías estar aquí...'" -ForegroundColor Red
    Write-Host ""
    Write-Host "¿Qué harás?" -ForegroundColor Cyan
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar más pistas"
    $choice2 = Read-Host "Elige 1 o 2"

    switch ($choice2) {
        "1" { LuchaEncapuchado }
        "2" { HuirBiblioteca }
        default { Write-Host "Opción no válida"; exit }
    }
}

function LuchaEncapuchado {
    Clear-Host
    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rápido y te esquiva." -ForegroundColor Red
    Write-Host "Lanza un hechizo, inmovilizándote. Antes de perder el conocimiento, escuchas:" -ForegroundColor Red
    Write-Host "'Has cometido un error...'"
    Final1
}

function HuirBiblioteca {
    Clear-Host
    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicación exacta de la Torre del Eco." -ForegroundColor Green
    Write-Host "Decides partir de inmediato."
    Torre
}

function Bosque {
    Clear-Host
    Write-Host "El bosque está envuelto en niebla. Encuentras un círculo de piedras brillantes." -ForegroundColor Green
    Write-Host "Una criatura sombría emerge de entre los árboles."
    Write-Host ""
    Write-Host "¿Qué harás?" -ForegroundColor Cyan
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"
    $choice3 = Read-Host "Elige 1 o 2"

    switch ($choice3) {
        "1" { HablarCriatura }
        "2" { Esconderse }
        default { Write-Host "Opción no válida"; exit }
    }
}

function HablarCriatura {
    Clear-Host
    Write-Host "La criatura se presenta como un guardián del Cristal." -ForegroundColor Cyan
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host ""
    Write-Host "¿Le crees?" -ForegroundColor Cyan
    Write-Host "1. Sí, decides buscar otra pista"
    Write-Host "2. No, continúas a la torre"
    $choice4 = Read-Host "Elige 1 o 2"

    switch ($choice4) {
        "1" { BuscarPista }
        "2" { Torre }
        default { Write-Host "Opción no válida"; exit }
    }
}

function Esconderse {
    Clear-Host
    Write-Host "Observas en silencio y ves a la criatura abrir un portal." -ForegroundColor Gray
    Write-Host "Sin dudar, te cuelas en él y apareces dentro de la Torre del Eco."
    Torre
}

function Torre {
    Clear-Host
    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas." -ForegroundColor White
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa mágica."
    Write-Host ""
    Write-Host "¿Cómo intentas desactivarla?" -ForegroundColor Cyan
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"
    $choice5 = Read-Host "Elige 1 o 2"

    switch ($choice5) {
        "1" { FuerzaBruta }
        "2" { Mecanismo }
        default { Write-Host "Opción no válida"; exit }
    }
}

function FuerzaBruta {
    Clear-Host
    Write-Host "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestrucción." -ForegroundColor Red
    Write-Host "Todo se vuelve blanco..."
    Final2
}

function Mecanismo {
    Clear-Host
    Write-Host "Encuentras un patrón en el suelo y lo activas con cuidado." -ForegroundColor White
    Write-Host "La trampa se desactiva y puedes tomar el Cristal."
    Write-Host ""
    Write-Host "¿Qué harás ahora?" -ForegroundColor Cyan
    Write-Host "1. Regresar a Eldoria"
    Write-Host "2. Usar el poder del Cristal para ti mismo"
    $choice6 = Read-Host "Elige 1 o 2"

    switch ($choice6) {
        "1" { Final3 }
        "2" { Final4 }
        default { Write-Host "Opción no válida"; exit }
    }
}

function BuscarPista {
    Clear-Host
    Write-Host "Ignoras la Torre y sigues el consejo de la criatura." -ForegroundColor Green
    Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
    Final3
}

function Final1 {
    Clear-Host
    Write-Host "======================================" -ForegroundColor DarkGray
    Write-Host "        FINAL: DESTINO SELLADO        " -ForegroundColor DarkGray
    Write-Host "======================================" -ForegroundColor DarkGray
    Write-Host "Fuiste derrotado antes de conocer la verdad." -ForegroundColor Gray
    Write-Host "El Cristal del Alba permanece perdido, y Eldoria se sume en la oscuridad."
    Pausa
    exit
}

function Final2 {
    Clear-Host
    Write-Host "======================================" -ForegroundColor Red
    Write-Host "        FINAL: EL FIN DEL REINO       " -ForegroundColor Red
    Write-Host "======================================" -ForegroundColor Red
    Write-Host "El hechizo destruyó la torre y contigo dentro." -ForegroundColor Red
    Write-Host "Sin el Cristal del Alba, Eldoria colapsa en el caos."
    Pausa
    exit
}

function Final3 {
    Clear-Host
    Write-Host "======================================" -ForegroundColor Green
    Write-Host "     FINAL: EL HÉROE DE ELDORIA       " -ForegroundColor Green
    Write-Host "======================================" -ForegroundColor Green
    Write-Host "Regresas con el Cristal del Alba y restauras el equilibrio." -ForegroundColor Green
    Write-Host "El reino celebra tu valentía y tu nombre será recordado para siempre."
    Pausa
    exit
}

function Final4 {
    Clear-Host
    Write-Host "======================================" -ForegroundColor Magenta
    Write-Host "     FINAL: EL NUEVO SEÑOR OSCURO     " -ForegroundColor Magenta
    Write-Host "======================================" -ForegroundColor Magenta
    Write-Host "Decides usar el Cristal para aumentar tu poder." -ForegroundColor Magenta
    Write-Host "Te conviertes en un ser temido, gobernando con puño de hierro."
    Pausa
    exit
}
