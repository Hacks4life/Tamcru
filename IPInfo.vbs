strMsg = ""
strComputer = "."

Set objWMIService = GetObject("winmgmts:" _ 
  & "{impersonationLevel=impersonate}!\\" _
  & strComputer & "\root\cimv2")
Set IPConfigSet = objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration WHERE IPEnabled = 'True'")

For Each IPConfig in IPConfigSet
  strMsg = strMsg & "Description: " & IPConfig.Description & vbcrlf
  strMsg = strMsg & "Mac Address: " & IPConfig.MACAddress & vbcrlf
  strMsg = strMsg & "DHCP Enabled: " & IPConfig.DHCPEnabled & vbcrlf
  strMsg = strMsg & "DHCP Server: " & IPConfig.DHCPServer & vbcrlf
  strMsg = strMsg & "DNS Host Name: " & IPConfig.DNSHostName & vbcrlf
  strMsg = strMsg & "IP Address: " & IPConfig.IPAddress(i) & vbcrlf
  strMsg = strMsg & "Subnet Mask: " & IPConfig.IPSubnet(i) & vbcrlf
  If Not IsNull(IPConfig.DefaultIPGateway) Then
    strMsg = strMsg & "Default Gateway: " & IPConfig.DefaultIPGateway(i) & vbcrlf
  End If
  strMsg = strMsg & "DNS Servers: " & _
    join(IPConfig.DNSServerSearchOrder, ", ") & vbcrlf 
  strMsg = strMsg & vbcrlf
Next

MsgBox strMsg, VBOKOnly, "*Tamcru* IP Information"
