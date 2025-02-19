#NO HE SIDO YO - HA SIDO MI PRIMO CHATGPT
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crear la ventana
$form = New-Object System.Windows.Forms.Form
$form.Text = "Batalla RPG"
$form.Size = New-Object System.Drawing.Size(500,400)
$form.StartPosition = "CenterScreen"

# Cargar imágenes
$ahriImage = [System.Drawing.Image]::FromFile("ahri.jpg")
$dravenImage = [System.Drawing.Image]::FromFile("draven.jpg")

# Etiquetas para la salud
$labelAhriHealth = New-Object System.Windows.Forms.Label
$labelAhriHealth.Location = New-Object System.Drawing.Point(50, 200)
$labelAhriHealth.Size = New-Object System.Drawing.Size(100, 20)
$labelAhriHealth.Text = "Ahri: 100"

$labelDravenHealth = New-Object System.Windows.Forms.Label
$labelDravenHealth.Location = New-Object System.Drawing.Point(350, 200)
$labelDravenHealth.Size = New-Object System.Drawing.Size(100, 20)
$labelDravenHealth.Text = "Draven: 100"

# Etiqueta de combate
$labelCombat = New-Object System.Windows.Forms.Label
$labelCombat.Location = New-Object System.Drawing.Point(150, 250)
$labelCombat.Size = New-Object System.Drawing.Size(200, 100)
$labelCombat.Text = "La batalla comienza..."

# PictureBox para las imágenes
$pictureBoxAhri = New-Object System.Windows.Forms.PictureBox
$pictureBoxAhri.Location = New-Object System.Drawing.Point(50, 50)
$pictureBoxAhri.Size = New-Object System.Drawing.Size(100,100)
$pictureBoxAhri.Image = $ahriImage
$pictureBoxAhri.SizeMode = "StretchImage"

$pictureBoxDraven = New-Object System.Windows.Forms.PictureBox
$pictureBoxDraven.Location = New-Object System.Drawing.Point(350, 50)
$pictureBoxDraven.Size = New-Object System.Drawing.Size(100,100)
$pictureBoxDraven.Image = $dravenImage
$pictureBoxDraven.SizeMode = "StretchImage"

# Botón de ataque
$attackButton = New-Object System.Windows.Forms.Button
$attackButton.Location = New-Object System.Drawing.Point(200, 150)
$attackButton.Size = New-Object System.Drawing.Size(100, 30)
$attackButton.Text = "Atacar"

# Variables de salud
$global:ahriHealth = 100
$global:dravenHealth = 100

# Evento de ataque
$attackButton.Add_Click({
    if ($global:dravenHealth -gt 0) {
        $global:dravenHealth -= 10
        $labelDravenHealth.Text = "Draven: " + $global:dravenHealth
        $labelCombat.Text = "Ahri ataca a Draven!"
    }

    Start-Sleep -Seconds 1

    if ($global:dravenHealth -gt 0) {
        $randomNumber = Get-Random -Minimum 0 -Maximum 100  # Número aleatorio entre 0 y 99
        
        if ($randomNumber -lt 49) {
            # Draven se defiende y recibe solo 5 de daño
            $labelCombat.Text += "`nDraven se defiende y recibe solo 5 de daño!"
            $global:dravenHealth += 5  # Restaura 5 puntos porque en el ataque previo recibió 10
            $labelDravenHealth.Text = "Draven: " + $global:dravenHealth
        } else {
            # Draven ataca y hace 10 de daño
            $global:ahriHealth -= 10
            $labelAhriHealth.Text = "Ahri: " + $global:ahriHealth
            $labelCombat.Text += "`nDraven contraataca!"
        }
    }

    if ($global:ahriHealth -le 0) {
        $labelCombat.Text = "Ahri ha sido derrotada!"
    }
    if ($global:dravenHealth -le 0) {
        $labelCombat.Text = "Draven ha sido derrotado!"
    }
})

# Agregar elementos al formulario
$form.Controls.Add($pictureBoxAhri)
$form.Controls.Add($pictureBoxDraven)
$form.Controls.Add($labelAhriHealth)
$form.Controls.Add($labelDravenHealth)
$form.Controls.Add($labelCombat)
$form.Controls.Add($attackButton)

# Mostrar la ventana
$form.ShowDialog()
