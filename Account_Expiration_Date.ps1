Get-ADUser -Filter 'enabled -eq $true' -Properties AccountExpirationDate | Select sAMAccountName, distinguishedName, AccountExpirationDate

Get-ADUser -Filter 'enabled -eq $true' -Searchbase "OU=IT,DC=Adatum,DC=com" -Properties AccountExpirationDate | Select SAMAccountName, distinguishedName, AccountExpirationDate |export-csv C:\ExpiryDate.csv -NoTypeInformation

Search-ADAccount -AccountExpired | Where-Object {$_.AccountExpirationDate -ge ((Get-Date).AddDays(-1))}
