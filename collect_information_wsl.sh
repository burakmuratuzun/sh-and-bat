echo Computer Name -  Hostname: > client-device-information.txt
#"echo example" command writes expressions and "echo." command add an empty line.
hostname >> client-device-information.txt
#"hostname" command writes computer's name.
echo >> client-device-information.txt
echo Username: >> client-device-information.txt
whoami >> client-device-information.txt
#"whoami" command writes computer's name.
echo >> client-device-information.txt
echo IP Adress >> client-device-information.txt
curl ifconfig.me >> client-device-information.txt
#"curl" is a command which you can get specific information from a website.
echo >> client-device-information.txt
ip addr show >> client-device-information.txt
echo >> client-device-information.txt
echo Available Memory Space >> client-device-information.txt
cat /proc/meminfo | grep "MemFree" >> client-device-information.txt
#The /proc filesystem is pseudo filesystem. It does not exist on a disk. The kernel creates it in memory. It provides information about the system. "meminfo" is an addition about memory information.
#"grep" command searches text and strings in a file.
echo >> client-device-information.txt
echo Avaible Harddisk Space -System Drive- >> client-device-information.txt
df -h >> client-device-information.txt
#"df" command gets information about total space and available space on a file system. "-h" addition means easy readible for human.
echo >> client-device-information.txt
echo Current Working Directory >> client-device-information.txt
pwd >> client-device-information.txt
#"pwd" command gets current working directory.
echo >> client-device-information.txt
echo Current Running Applications and Services >> client-device-information.txt
echo wsl problems... >> client-device-information.txt
#"tasklist" command gets information about running applications and services.
echo >> client-device-information.txt
echo You cannot check opened ports using wsl because it has some optimization problems... >> client-device-information.txt