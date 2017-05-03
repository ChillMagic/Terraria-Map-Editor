$source = ".\TEditXna\bin\Release"
$version = Get-Content .\cnversion.txt
$destination = ".\build\TEdit3_build_$env:APPVEYOR_BUILD_VERSION.zip"

if (!(Test-Path -path .\build))
{
    New-Item .\build -type directory
}

Write-Host "Zipping $source ..." -ForegroundColor Yellow

 If(Test-path $destination) {Remove-item $destination}

Add-Type -assembly "system.io.compression.filesystem"

[io.compression.zipfile]::CreateFromDirectory([System.IO.Path]::Combine($PSScriptRoot, $Source), [System.IO.Path]::Combine($PSScriptRoot, $destination)) 

Write-Host "Created $destination." -ForegroundColor Green