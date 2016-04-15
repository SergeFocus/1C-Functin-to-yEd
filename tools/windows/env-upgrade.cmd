@echo off
cls
@choco upgrade conemu -y
@choco upgrade git -y
@choco upgrade notepadplusplus -y
@choco upgrade sourcetree
@choco upgrade python -y
@choco upgrade ruby -y
@choco upgrade wget -y
@choco upgrade pickles -y
@choco upgrade picklesui -y
@choco upgrade pandoc -y
@choco upgrade irfanview -y
echo Waiting for MSI for oscript.io
echo choco upgrade oscript
@choco upgrade sublimetext3 -y
@choco upgrade atom -y
@choco upgrade plantuml -y
@choco upgrade chocolateygui -y

echo addition cloud provider

@choco upgrade virtualbox -y
@choco upgrade vagrant -y
@choco upgrade docker-machine -y
@choco upgrade docker -y
@choco upgrade docker-compose -y
