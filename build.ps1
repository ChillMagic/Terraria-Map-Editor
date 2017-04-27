Write-Host "Building Solution..."
appveyor-retry nuget restore TEditNoInstaller.sln
msbuild TEditNoInstaller.sln /m /p:Configuration=Release /logger:"C:\Program Files\AppVeyor\BuildAgent\Appveyor.MSBuildLogger.dll"
./package.ps1