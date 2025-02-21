function Get-ValidChoice {
    param (
        [string]$message
    )
    do {
        $choice = Read-Host $message
        if ($choice -ne '1' -and $choice -ne '2') {
            Write-Host "⚠️ Entrada no válida. Debes elegir 1 o 2." -ForegroundColor Red
        }
    } while ($choice -ne '1' -and $choice -ne '2')
    return $choice
}

Clear-Host
$Host.UI.RawUI.BackgroundColor = 'Black'
$Host.UI.RawUI.ForegroundColor = 'Yellow'
Write-Host "================================"
Write-Host "     EL DESTINO DE ELDORIA"
Write-Host "================================"
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tú."
Write-Host ""
Write-Host "¿Dónde comienzas tu búsqueda?"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"

$choice1 = Get-ValidChoice "Elige 1 o 2"

switch ($choice1) {
    '1' {
        Clear-Host
        $Host.UI.RawUI.ForegroundColor = 'White'
        Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
        Write-Host "Una figura encapuchada te observa y susurra: No deberías estar aquí..."
        Write-Host ""
        Write-Host "¿Qué harás?"
        Write-Host "1. Enfrentarlo con tu espada"
        Write-Host "2. Huir y buscar más pistas"
        $choice2 = Get-ValidChoice "Elige 1 o 2"
        switch ($choice2) {
            '1' {
                Clear-Host
                Write-Host "El encapuchado revela ser un antiguo guardián del Cristal."
                Write-Host "Te ofrece un trato: renunciar a la búsqueda o enfrentarte a un destino incierto."
                Write-Host "¿Aceptarás su oferta?"
                Write-Host "1. Aceptar y abandonar la misión"
                Write-Host "2. Rechazar y seguir buscando"
                $choiceA = Get-ValidChoice "Elige 1 o 2"
                switch ($choiceA) {
                    '1' {
                        Clear-Host
                        Write-Host "Te retiras, pero el reino cae en el caos sin el Cristal."
                        Write-Host "FINAL: EL COBARDE DE ELDORIA"
                        Pause
                        Exit
                    }
                    '2' {
                        Clear-Host
                        Write-Host "El encapuchado desaparece y deja caer una llave."
                        Write-Host "Encuentras una puerta secreta en la biblioteca."
                        Write-Host "¿Abrirás la puerta o buscarás más pistas?"
                        Write-Host "1. Abrir la puerta"
                        Write-Host "2. Buscar más pistas"
                        $choiceB = Get-ValidChoice "Elige 1 o 2"
                        switch ($choiceB) {
                            '1' {
                                Clear-Host
                                Write-Host "La puerta te lleva a un pasaje oculto que desciende bajo la biblioteca."
                                Write-Host "En el fondo, encuentras un altar con símbolos ancestrales."
                                Write-Host "FINAL: EL DESCUBRIDOR DEL SECRETO"
                                Pause
                                Exit
                            }
                            '2' {
                                Clear-Host
                                Write-Host "Sigues buscando y descubres que la Torre del Eco es una trampa."
                                Write-Host "Pero hay otro lugar: la Cripta de los Antiguos."
                                Write-Host "Decides viajar allí."
                            }
                        }
                    }
                }
            }
        }
    }
    '2' {
        Clear-Host
        $Host.UI.RawUI.ForegroundColor = 'Green'
        Write-Host "El bosque está envuelto en niebla. Encuentras un círculo de piedras brillantes."
        Write-Host "Una criatura sombría emerge de entre los árboles."
        Write-Host ""
        Write-Host "¿Qué harás?"
        Write-Host "1. Hablar con la criatura"
        Write-Host "2. Esconderte y observar"
        $choice3 = Get-ValidChoice "Elige 1 o 2"
        switch ($choice3) {
            '1' {
                Clear-Host
                Write-Host "La criatura se presenta como un guardián del Cristal."
                Write-Host "Te ofrece guiarte hacia el templo secreto."
                Write-Host "¿Le seguirás?"
                Write-Host "1. Sí, confiar en la criatura"
                Write-Host "2. No, buscar otra ruta"
                $choice4 = Get-ValidChoice "Elige 1 o 2"
                switch ($choice4) {
                    '1' {
                        Clear-Host
                        Write-Host "Sigues a la criatura y descubres el verdadero escondite del Cristal."
                        Write-Host "FINAL: EL HÉROE OCULTO"
                        Pause
                        Exit
                    }
                    '2' {
                        Clear-Host
                        Write-Host "Ignoras su consejo y sigues solo."
                        Write-Host "Te pierdes en la niebla y terminas atrapado en un bucle sin fin."
                        Write-Host "FINAL: EL PERDIDO EN EL BOSQUE"
                        Pause
                        Exit
                    }
                }
            }
        }
    }
}
