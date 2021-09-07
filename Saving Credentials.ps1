Get-Credential "admin@ABusiness.Com" |

Export-Clixml C:\ABusinessCredential.xml

$cred = Import-Clixml C:\ABusinessCredential.xml

Connect-MsolService -Credential $cred

Msol can be whatever service you are connecting to
