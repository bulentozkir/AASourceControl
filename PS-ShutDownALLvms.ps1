$cred = Get-AutomationPSCredential -Name 'contosoaccount'
$cred 
$subscription = Get-AutomationVariable -Name 'ContosoSubscriptionID'
$subscription 
Login-AzureRMAccount -Credential $cred -SubscriptionId $subscription
Get-AzureRMVM -ResourceGroupName contosotestbox-ggw6gd2x | Stop-AzureRMVm -Force
Get-AzureRMVM -ResourceGroupName ContosoDSC | Stop-AzureRMVm -Force
