@echo off
cls
@choco upgrade git -y 
@choco upgrade notepadplusplus -y
echo Waiting for aproved https://chocolatey.org/packages/SourceTree, install skiped
echo choco install sourcetree
@choco upgrade python
@choco upgrade wget
@choco upgrade pickles
@choco upgrade picklesui
@choco upgrade pandoc
@choco upgrade irfanview
echo Wainting for MSI for oscript.io
echo choco upgrade oscript