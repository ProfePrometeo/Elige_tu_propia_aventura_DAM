# El Destino de Eldoria en PowerShell
Clear-Host
$host.UI.RawUI.BackgroundColor = 'DarkYellow'
Write-Host "===============================" -ForegroundColor Black
Write-Host "     EL DESTINO DE ELDORIA    " -ForegroundColor Black
Write-Host "===============================" -ForegroundColor Black
Write-Host "\nEl reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba." -ForegroundColor White
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos." -ForegroundColor White
Write-Host "Solo una persona puede recuperarlo: tú.\n" -ForegroundColor White
Write-Host "¿Dónde comienzas tu búsqueda?" -ForegroundColor Cyan
Write-Host "1. La Biblioteca de los Sabios" -ForegroundColor Green
Write-Host "2. El Bosque de las Sombras" -ForegroundColor Green

$choice1 = Read-Host "Elige 1 o 2"
switch ($choice1) {
    "1" { Biblioteca }
    "2" { Bosque }
    Default { Write-Host "Opción no válida, intenta de nuevo." -ForegroundColor Red; Start-Script }
}

function Biblioteca {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = 'Yellow'
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco." -ForegroundColor Black
    Write-Host "Una figura encapuchada te observa y susurra: No deberías estar aquí...\n" -ForegroundColor DarkRed
    Write-Host "¿Qué harás?" -ForegroundColor Cyan
    Write-Host "1. Enfrentarlo con tu espada" -ForegroundColor Green
    Write-Host "2. Huir y buscar más pistas" -ForegroundColor Green
    
    $choice2 = Read-Host "Elige 1 o 2"
    switch ($choice2) {
        "1" { LuchaEncapuchado }
        "2" { HuirBiblioteca }
        Default { Write-Host "Opción no válida, intenta de nuevo." -ForegroundColor Red; Biblioteca }
    }
}

function LuchaEncapuchado {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = 'Red'
    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rápido y te esquiva." -ForegroundColor White
    Write-Host "Lanza un hechizo, inmovilizándote. Antes de perder el conocimiento, escuchas:" -ForegroundColor White
    Write-Host "Has cometido un error..." -ForegroundColor DarkRed
    Final1
}

function HuirBiblioteca {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = 'Green'
    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicación exacta de la Torre del Eco." -ForegroundColor White
    Write-Host "Decides partir de inmediato." -ForegroundColor White
    Torre
}

function Bosque {
    Clear-Host
    $host.UI.RawUI.BackgroundColor = 'DarkGreen'
    Write-Host "El bosque está envuelto en niebla. Encuentras un círculo de piedras brillantes." -ForegroundColor White
    Write-Host "Una criatura sombría emerge de entre los árboles.\n" -ForegroundColor White
    Write-Host "¿Qué harás?" -ForegroundColor Cyan
    Write-Host "1. Hablar con la criatura" -ForegroundColor Green
    Write-Host "2. Esconderte y observar" -ForegroundColor Green
    
    $choice3 = Read-Host "Elige 1 o 2"
    switch ($choice3) {
        "1" { HablarCriatura }
        "2" { Esconderse }
        Default { Write-Host "Opción no válida, intenta de nuevo." -ForegroundColor Red; Bosque }
    }
}

function Final1 {
    Clear-Host
    Write-Host "FINAL: DESTINO SELLADO" -ForegroundColor DarkGray
    Write-Host "Fuiste derrotado antes de conocer la verdad." -ForegroundColor White
    pause
}

function Start-Script {
    Clear-Host
    . $PSCommandPath  # Reinicia el script desde el inicio
}

Start-Script


