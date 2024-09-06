# Load the necessary assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Define the amount of time to wait between mouse movements (in seconds)
$interval = 60

Write-Host "Will move mouse every" $interval "seconds"

# Function to move the mouse cursor slightly
function Move-Mouse {
    # Get the current mouse cursor position
    $currentPos = [System.Windows.Forms.Cursor]::Position
    
    # Calculate new positions (just move the mouse slightly)
    $newX = $currentPos.X + 1
    $newY = $currentPos.Y + 1
    Write-Host "Moving Mouse"
    # Move the mouse to the new position
    [System.Windows.Forms.Cursor]::Position = [System.Drawing.Point]::new($newX, $newY)
    
    # Move the mouse back to the original position
    [System.Windows.Forms.Cursor]::Position = $currentPos
}

# Keep running the function indefinitely
while ($true) {
    Move-Mouse
    Start-Sleep -Seconds $interval
}
