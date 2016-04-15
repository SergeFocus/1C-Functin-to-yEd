@echo off
cls
@choco install conemu -y
@choco install git -y -params '"/GitAndUnixToolsOnPath"'
@choco install notepadplusplus -y
@choco install sourcetree
@choco install python -y
@choco install ruby -y
@choco install wget -y
@choco install pickles -y
@choco install picklesui -y
@choco install pandoc -y
@choco install irfanview -y
echo Wainting for MSI for oscript.io
echo choco install oscript
@choco install sublimetext3 -y
@choco install atom -y
@choco install plantuml -y
@choco install chocolateygui -y

echo addition cloud provider

@choco install virtualbox -y
@choco install vagrant -y
@choco install docker-machine -y
@choco install docker -y
@choco install docker-compose -y
