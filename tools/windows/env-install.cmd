@echo off
cls
@choco install git -y -params '"/GitAndUnixToolsOnPath"'
@choco install notepadplusplus -y
echo Waiting for aproved https://chocolatey.org/packages/SourceTree, install skiped
echo choco install sourcetree
@choco install python -y
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