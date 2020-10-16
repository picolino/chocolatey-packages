$packageName = 'minibin'
$installerType = 'exe'
$installerFileNameWithExtension = 'MiniBin-6.6.0.0-Setup.exe'
$url = 'https://e-sushi.net/minibin/free/minibin.zip'
$checkSum = '6AD238C3559B45C1EDF8781DA779A713602E8640C08649AF1A08F306255B9E8818132F83A3F003B801BF92D1599B57B388C2A95D3F416938D43ABAB5750574D2'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -Checksum "$checkSum" -ChecksumType "sha512"
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$toolsDir/$installerFileNameWithExtension" -validExitCodes "$validExitCodes"
