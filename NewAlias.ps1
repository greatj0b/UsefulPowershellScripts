<############################################
Create a New Email Alias in Active Directory (Office 365)
Tyler Hulsey
07/19/2018
##############################################>

Import-Module ActiveDirectory

$user = Read-Host "Who needs a new name?"
$newAlias = Read-Host "Type the new alias"


$smpt2 = "smtp:$newAlias@domain.com"
$smpt3 = "smtp:$newAlias@domain.mail.onmicrosoft.com"


Get-ADUser $user | Set-ADUser -Add @{proxyaddresses=$smpt2}
Get-ADUser $user | Set-ADUser -Add @{proxyaddresses=$smpt3}

Write-Host "Proxy Addresses Set!"




Write-Host "Done!" -ForegroundColor green