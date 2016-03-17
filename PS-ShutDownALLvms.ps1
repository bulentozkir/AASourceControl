$cred = Get-AutomationPSCredential -Name 'contosoaccount' 
$subscription = Get-AutomationVariable -Name 'ContosoSubscriptionID' 
Login-AzureRMAccount -Credential $cred -SubscriptionId $subscription
Get-AzureRMVM -ResourceGroupName contoso | Stop-AzureRMVm -Force
Get-AzureRMVM -ResourceGroupName ContosoDSC | Stop-AzureRMVm -Force
