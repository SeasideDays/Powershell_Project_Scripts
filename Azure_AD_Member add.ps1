Get-AzureADUser

$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$Passw0rdProfile.Password = "PASSWORD"

$params = @{
    AccountEnabled = $true
        DisplayName = "John Doe"
            PasswordProfile = $PasswordProfile
                UserPrincipalName = "JoD@Medical"
                    MailNickName = "Doe"
                    }

New-AzureADUser @params

Get-AzureADUser







