#Connect to Automation Account
$azConn = Get-AutomationConnection -Name 'AzureRunAsConnection'
Add-AzureRMAccount -ServicePrincipal -Tenant $azConn.TenantID -ApplicationId $azConn.ApplicationId -CertificateThumbprint $azConn.CertificateThumbprint

#Define TAG that will be validated for the start of VMs
$azVMs = Get-AzureRMVM | Where-Object {$_.Tags.Automation -eq 'Start-Stop-VMs-HML'}

#Start the VMs
$azVMS | Start-AzureRMVM
