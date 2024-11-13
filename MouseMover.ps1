# This script moves mouse slightly every $interval seconds

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$interval = 60

Write-Host "Will move mouse every" $interval "seconds"

while ($true) {
    $currentPos = [System.Windows.Forms.Cursor]::Position
    $newX = $currentPos.X + 1
    $newY = $currentPos.Y + 1

    Write-Host "Moving Mouse"
    [System.Windows.Forms.Cursor]::Position = [System.Drawing.Point]::new($newX, $newY)
    [System.Windows.Forms.Cursor]::Position = $currentPos

    Start-Sleep -Seconds $interval
}