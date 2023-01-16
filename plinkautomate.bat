@echo off
plink.exe -serial COM1 -sercfg 9600,8,n,1,N < commands.txt > output.txt
pause
