@echo off

rem Connect to the Cisco switch using Putty and the serial cable
start "putty" putty.exe -serial COM3 -sercfg 115200

rem Send commands to the Cisco switch
echo enable^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo mypassword^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo conf t^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo interface fastEthernet 0/1^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo description This is a test interface^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo exit^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:
timeout /t 2 /nobreak
echo wr mem^M >> com3.txt
timeout /t 2 /nobreak
type com3.txt > com3:

rem Disconnect from the Cisco switch
exit
