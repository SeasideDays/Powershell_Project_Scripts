Get-ADUser -Filter *  -Properties Name,Lastlogontimestamp,PasswordNeverExpires | Where-Object {([datetime]::FromFileTime($_.lastlogontimestamp) -le (Get-Date).adddays(-30)) -and ($_.passwordNeverExpires -ne "true") } | Disable-ADAccount


