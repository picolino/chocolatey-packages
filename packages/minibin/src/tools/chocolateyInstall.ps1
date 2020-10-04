$packageName = 'minibin'
$installerType = 'exe'
$installerFileNameWithExtension = 'MiniBin-6.6.0.0-Setup.exe'
$url = 'https://e-sushi.net/minibin/free/minibin.zip'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir"
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$toolsDir/$installerFileNameWithExtension" -validExitCodes $validExitCodes
