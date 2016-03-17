$cred = Get-AutomationPSCredential -Name 'contosoaccount'
$subscription = Get-AutomationVariable -Name 'ContosoSubscriptionID'
Login-AzureRMAccount -Credential $cred -SubscriptionId $subscription
Get-AzureRMVM -ResourceGroupName PremierWorkshop | Stop-AzureRMVm -Force
