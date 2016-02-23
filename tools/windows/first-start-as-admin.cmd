@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

@choco install curl -y
@choco install unzip -y

@curl -o env-install.cmd -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/tools/windows/env-install.cmd
@env-install

@curl -o env-upgrade.cmd -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/tools/windows/env-upgrade.cmd
