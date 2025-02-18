# El Destino de Eldoria en PowerShell

# Configuración inicial
$host.UI.RawUI.BackgroundColor = 'DarkYellow'
Clear-Host
Write-Host "=============================" -ForegroundColor Yellow
Write-Host "     EL DESTINO DE ELDORIA" -ForegroundColor Yellow
Write-Host "=============================" -ForegroundColor Yellow
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host ""

# Elección inicial
Write-Host "¿Donde comienzas tu busqueda?"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$choice1 = Read-Host "Elige 1 o 2"

switch ($choice1) {
    "1" {
        Clear-Host
        Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
        Write-Host "Una figura encapuchada te observa y susurra: 'No deberias estar aqui...'"
        Write-Host ""
        Write-Host "¿Que haras?"
        Write-Host "1. Enfrentarlo con tu espada"
        Write-Host "2. Huir y buscar mas pistas"
        $choice2 = Read-Host "Elige 1 o 2"
        
        if ($choice2 -eq "1") {
            Clear-Host
            Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva."
            Write-Host "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas: 'Has cometido un error..." -ForegroundColor Red
            exit
        }
        elseif ($choice2 -eq "2") {
            Clear-Host
            Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco."
            Write-Host "Decides partir de inmediato."
        }
    }
    "2" {
        Clear-Host
        Write-Host "El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes."
        Write-Host "Una criatura sombria emerge de entre los arboles."
        Write-Host ""
        Write-Host "¿Que haras?"
        Write-Host "1. Hablar con la criatura"
        Write-Host "2. Esconderte y observar"
        $choice3 = Read-Host "Elige 1 o 2"
        
        if ($choice3 -eq "1") {
            Clear-Host
            Write-Host "La criatura se presenta como un guardian del Cristal."
            Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
        }
        elseif ($choice3 -eq "2") {
            Clear-Host
            Write-Host "Observas en silencio y ves a la criatura abrir un portal."
            Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
        }
    }
    default {
        Write-Host "Opcion no valida, intenta de nuevo." -ForegroundColor Red
    }
}
