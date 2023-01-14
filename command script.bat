@@echo off

rem Get the user's input for the COM port
set /p com_port=Enter the COM port: 

rem Connect to the switch using serial connection
mode %com_port%:115200,n,8,1

rem Wait for the serial connection to be established
timeout /t 5

rem Send the commands to the switch
echo enable > cisco.txt
echo mypassword >> cisco.txt
echo conf t >> cisco.txt
echo interface vlan 10 >> cisco.txt
echo ip address 10.0.0.2 255.255.255.0 >> cisco.txt
echo no shut >> cisco.txt
echo exit >> cisco.txt
echo exit >> cisco.txt
echo exit >> cisco.txt

rem Run the commands from the cisco.txt file
type cisco.txt > %com_port%

rem Wait for the serial connection to close
timeout /t 5

rem Delete the cisco.txt file
del cisco.txt
