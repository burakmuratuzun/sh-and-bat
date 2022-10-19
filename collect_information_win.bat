@echo off
::If you use "@echo off" command, you don't see commands in the output.
echo Computer Name - Hostname: > client-device-information.txt
::"echo" command writes expressions and "echo." command add an empty line.
::"> example.txt" command create a text file and writes the output.
hostname >> client-device-information.txt
::"hostname" command writes computer's name.
echo. >> client-device-information.txt
echo User Name: >> client-device-information.txt
echo %username% >> client-device-information.txt
::If you don't know username, you can use "%username%" expression. System writes real username.
echo. >> client-device-information.txt
echo IP Adress: >> client-device-information.txt
curl ifconfig.me >> client-device-information.txt
::"curl" is a command which you can get specific information from a website.
echo. >> client-device-information.txt
echo Network Adapters: >> client-device-information.txt
ipconfig /all | find "Description" >> client-device-information.txt
::"ipconfig" command gets information about IP adresses and network adapters.
::"find" command finds the expression in quotes and writes all the line or lines with the expression.
echo. >> client-device-information.txt
systeminfo | find "Available Physical Memory"
::"systeminfo" command gets specific computer information (such as RAM, disk space).
echo. >> client-device-information.txt
echo Available Harddisk Space >> client-device-information.txt
wmic logicaldisk where drivetype=3 get name,FreeSpace >> client-device-information.txt
::You can perform Windows Management Instrumentation (WMI) operations with "wmic" command. "drivetype=3" means local disks.
echo Current Working Directory >> client-device-information.txt
cd >> client-device-information.txt
::"cd" command gets current working directory.
echo. >> client-device-information.txt
echo Current Running Applications and Services
tasklist >> client-device-information.txt
::"tasklist" command gets information about running applications and services.
echo. >> client-device-information.txt
echo Current Opened Ports >> client-device-information.txt
netstat -an | find "LISTENING" >> client-device-information.txt
::"netstat" is a command about network informations (such as opened ports). "-an" is an addition and specific request for "netstat" command.