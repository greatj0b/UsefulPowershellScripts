<############################################
Syncronization of Folder to OneDrive
Tyler Hulsey
07/19/2018
##############################################>


$ODlocation = "%UserProfile%\OneDrive\{ONEDRIVE FOLDER HERE}"
$localLocation = "C:\{LOCAL FOLDER HERE}"

Write-Host "OneDrive Location: $ODlocation"
Write-Host "Local Location: $localLocation"

Write-Host "Creating Junction...." -ForegroundColor Yellow
cmd /c mklink /j $ODlocation  $localLocation

Write-Host "Syncronization of Folder has been completed." -ForegroundColor Green
Write-Host "Folder will automatically be syncronized to OneDrive." -ForegroundColor Green