Import-Module ActiveDirectory

Get-ADUser -Properties * -Filter {Enabled -eq "True"} -SearchBase "OU=SBSUsers,OU=Users,OU=MyBusiness,DC=domain,DC=local"| Select-Object Name | Export-Csv -Path "EnabledUsers.csv"