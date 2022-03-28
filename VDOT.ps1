
$uri = "https://github.com/lmurray-mbg/AVD/raw/main/VDOT.zip"

Invoke-WebRequest -Uri $uri -OutFile .\VDOT.zip -UseBasicParsing

Expand-Archive -Path .\VDOT.zip -DestinationPath .\

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

.\VDOT\Windows_VDOT.ps1 -Verbose -AcceptEULA