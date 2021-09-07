Get-ADUser -Filter * -SearchBase "OU=Medical,OU=User,DC=ad,DC=adatum,DC=com" -Properties * | Select-Object name | export-csv -path c:\users.csv

