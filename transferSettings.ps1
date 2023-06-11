# get variables from obs config file
$pw = (Select-String -Path "$env:appdata\obs-studio\global.ini" -List -Pattern "(?<=ServerPassword=)\S+").Matches[0].Value
$port = (Select-String -Path "$env:appdata\obs-studio\global.ini" -List -Pattern "(?<=ServerPort=)\S+").Matches[0].Value

# print out variables
Write-Host $pw
Write-Host $port

# replace text in controller.html with new values
$controller = Get-Content -Path controller.html
$controller = $controller -creplace "YourPasswordHERE", $pw
$controller = $controller -creplace "4455", $port
$controller | Set-Content -Path controller.html