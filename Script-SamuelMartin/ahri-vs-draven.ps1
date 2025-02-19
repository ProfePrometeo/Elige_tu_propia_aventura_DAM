# Simulación de batalla por turnos en PowerShell

# Definición de los personajes con su barra de salud inicial
$Personaje1 = @{ Nombre = "Ahri"; Salud = 20 }
$Personaje2 = @{ Nombre = "Draven"; Salud = 10 }

# Turno de combate
$Turno = 1

while ($Personaje1["Salud"] -gt 0 -and $Personaje2["Salud"] -gt 0) {
    Write-Host "Turno $Turno"
    
    # Opción de ataque o defensa
    $accion = Read-Host "Escribe 'A' para atacar o 'D' para defender"
    
    if ($accion -eq "A") {
        $Personaje2["Salud"] -= 10
        Write-Host "$($Personaje1["Nombre"]) ataca a $($Personaje2["Nombre"])! Salud restante de $($Personaje2["Nombre"]): $($Personaje2["Salud"])"
    } elseif ($accion -eq "D") {
        Write-Host "$($Personaje1["Nombre"]) se defiende y reducirá el daño recibido."
    } else {
        Write-Host "Opción inválida, se perderá el turno."
    }
    
    # Verificar si Personaje2 ha sido derrotado
    if ($Personaje2["Salud"] -le 0) {
        Write-Host "$($Personaje2["Nombre"]) ha sido derrotado! $($Personaje1["Nombre"]) gana la batalla."
        break
    }
    
    # Respuesta automática del Personaje2
    Start-Sleep -Seconds 1  # Pausa breve para realismo
    
    if ($accion -eq "D") {
        $Personaje1["Salud"] -= 5  # Daño reducido por defensa
        Write-Host "$($Personaje2["Nombre"]) ataca, pero $($Personaje1["Nombre"]) se defiende y solo recibe 5 puntos de daño."
    } else {
        $Personaje1["Salud"] -= 10
        Write-Host "$($Personaje2["Nombre"]) responde atacando a $($Personaje1["Nombre"])! Salud restante de $($Personaje1["Nombre"]): $($Personaje1["Salud"])"
    }
    
    # Verificar si Personaje1 ha sido derrotado
    if ($Personaje1["Salud"] -le 0) {
        Write-Host "$($Personaje1["Nombre"]) ha sido derrotado! $($Personaje2["Nombre"]) gana la batalla."
        break
    }
    
    # Siguiente turno
    $Turno++
}

Write-Host "¡Fin de la batalla!"