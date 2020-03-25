$ConnectionName = Read-Host -Prompt 'Please enter the connection name: '
$ServerAddress = Read-Host -Prompt 'Input the IP address of your firewall: '
$PSK = Read-Host -Prompt 'Enter the PreShared Key of your connection: '
$ConnectionName = "Name"


Add-VpnConnection -Name "$ConnectionName" -ServerAddress "$ServerAddress" -TunnelType L2tp -L2tpPsk "$PSK" -AuthenticationMethod Pap -AllUserConnection -RememberCredential -Force