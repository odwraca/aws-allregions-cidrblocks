Import-Module AWSPowerShell.NetCore

$InstanceList = @()
foreach ($Region in (Get-AWSRegion)) {
  $CIDRList += Get-EC2Subnet -Region $Region.Region -ProfileName MB3
}
$CIDRList | Format-Table
