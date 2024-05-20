# Script PowerShell para instalar WSL y la última versión de Ubuntu

# Habilitar el Subsistema de Windows para Linux
Write-Host "Habilitando WSL..."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Habilitar la característica de máquina virtual
Write-Host "Habilitando la característica de Máquina Virtual..."
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Descargar e instalar la última versión del kernel de WSL
Write-Host "Descargando e instalando la última versión del kernel de WSL..."
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
Start-Process msiexec.exe -ArgumentList '/i wsl_update_x64.msi /quiet /norestart' -NoNewWindow -Wait

# Establecer WSL 2 como versión predeterminada
Write-Host "Estableciendo WSL 2 como la versión predeterminada..."
wsl --set-default-version 2

# Instalar Ubuntu 22.04 desde Microsoft Store
Write-Host "Instalando Ubuntu 22.04 desde Microsoft Store..."
$progressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://aka.ms/wslubuntu2204 -OutFile Ubuntu.appx
Add-AppxPackage .\Ubuntu.appx

# Lanzar Ubuntu para completar la instalación
Write-Host "Lanzando Ubuntu para completar la instalación..."
Start-Process ubuntu

# Mensaje de finalización
Write-Host "Instalación completa. Ubuntu 22.04 ha sido instalado y lanzado."