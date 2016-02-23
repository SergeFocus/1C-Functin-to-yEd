@echo off
cls
@choco install conemu --force -y
@choco install git --force -y -params '"/GitAndUnixToolsOnPath"'
@choco install --force notepadplusplus -y
echo Waiting for aproved https://chocolatey.org/packages/SourceTree, install skiped
echo choco install sourcetree
@choco install --force python -y
@choco install --force wget -y
@choco install --force pickles -y
@choco install --force picklesui -y
@choco install --force pandoc -y
@choco install --force irfanview -y
echo Wainting for MSI for oscript.io
echo choco install oscript
@choco install --force sublimetext3 -y
@choco install --force atom -y
@choco install --force plantuml -y

echo addition cloud provider

@choco install --force virtualbox -y
@choco install --force vagrant -y
@choco install --force docker-machine -y
@choco install --force docker -y
@choco install --force docker-compose -y
