#This script helps to take the plaintext representation of a powershell secure string (which is actually just the encrypted form of password) and convert it to plaintext password
# To do this it does the following: converts the  plaintext value (encrypted password) back to secure string object, then retrieves the plaintext password from secure string using useful powershell methods.

#Note you can only decrypt a SecureString in PowerShell with the same user account that created it

#usage
# $Encrypted = (ConvertTo-SecureString "01000000d08c9ddf0115d1118c7a00c04fc2[shortened for example]18c7a00c04fc2")
# .\DecryptPassword.ps1 -securestring $Encrypted
# DecryptPassword.ps1 is whatever this file is named


Param(
    $securestring = (Read-Host -AsSecureString)
)
Write-Host "Encrypted Password: $(ConvertFrom-SecureString $securestring)"
$ClearText = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($securestring))
Write-Host "Original Password: $ClearText"
