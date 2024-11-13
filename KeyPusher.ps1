# This script sends Shift+F15 every $interval seconds
# Shift+F15 is said to be least intrusive combo

$interval = 60

$wsh = New-Object -ComObject WScript.Shell
$count = 0

Write-Host "Unsleeper started, it imitates press of <Shift+F15> every $interval seconds"

while ($true) {
    $count++
    Write-Host "Pressing Shift+F15, $count time(s)"
    $wsh.SendKeys('+{F15}')
    Start-Sleep -seconds $interval
}