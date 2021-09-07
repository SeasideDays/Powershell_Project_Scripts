$disk = Get-WmiObject Win32_LogicalDisk -ComputerName LON-DC1 -Filter "DeviceID='C:'" |
Select-Object Size,FreeSpace
$disk.Size
$disk.FreeSpace