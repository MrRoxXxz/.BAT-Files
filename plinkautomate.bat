@echo off
plink.exe -serial COM1 -sercfg 115200,8,n,1,N -m commands.txt > output.txt
pause
