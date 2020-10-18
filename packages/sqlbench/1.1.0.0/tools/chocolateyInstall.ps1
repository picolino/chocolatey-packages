$packageName = 'minibin'
$installerType = 'zip'
$installerFileNameWithExtension = 'MiniBin-6.6.0.0-Setup.exe'
$url = 'https://github.com/felixge/sqlbench/releases/download/v1.1.0/sqlbench_1.1.0_windows_amd64.zip'
$checkSum = '0323409ee4c723cdbe292a8eacf92b907de5ddcd551318c825330aee1956e9fa'
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -Checksum "$checkSum" -ChecksumType "sha256"
