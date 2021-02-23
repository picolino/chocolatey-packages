$packageName = 'minibin'
$installerType = 'exe'
$installerFileNameWithExtension = 'MiniBin-6.6.0.0-Setup.exe'
$url = 'https://e-sushi.net/projects/minibin.zip'
$checkSum = '6ad238c3559b45c1edf8781da779a713602e8640c08649af1a08f306255b9e8818132f83a3f003b801bf92d1599b57b388c2a95d3f416938d43abab5750574d2'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -Checksum "$checkSum" -ChecksumType "sha512"
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$toolsDir/$installerFileNameWithExtension" -validExitCodes "$validExitCodes"
