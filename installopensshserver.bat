ECHO OFF

echo Add the capability
powershell Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

echo Start the daemon
powershell Start-Service sshd

echo Start the service on boot
powershell Set-Service -Name sshd -StartupType 'Automatic'

echo All done!