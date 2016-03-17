$cred = Get-AutomationPSCredential -Name 'contosoaccount'
$cred 
$subscription = Get-AutomationVariable -Name 'ContosoSubscriptionID'
$subscription 
Login-AzureRMAccount -Credential $cred -SubscriptionId $subscription
Get-AzureRMVM -ResourceGroupName PremierWorkshop | Stop-AzureRMVm -Force
