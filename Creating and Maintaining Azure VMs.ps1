New-AzVM -Name $NonProfit

<Create a simple VM>

$vm = New-AzVMConfig -VMName $NonProfit -VMSize "Standard_D1_v1"

<create a VM Configuration>

$vm = Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName $myVM -Credential $cred -ProvisionVMAgent -EnableAutoUpdate

<Add configuration setings>

$vm = Add-AzVMNetworkInterface -VM $vm -Id $nic.Id

<add network interface>


