Login-AzureRmAccount

$azureAdApplication = New-AzureRmADApplication -DisplayName "AzureAutomationApp" -HomePage "https://www.myapp.org/" -IdentifierUris "https://www.myApp.org/azureAutomationApp " -Password '<PASSWORD>'
 
New-AzureRmADServicePrincipal -ApplicationId $azureAdApplication.ApplicationId
  
New-AzureRmRoleAssignment -ServicePrincipalName $azureAdApplication.ApplicationId.Guid -RoleDefinitionName Contributor