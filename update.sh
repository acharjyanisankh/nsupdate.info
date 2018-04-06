#!/bin/bash
echo " Updating Your IPv4 Nameserver with Present Ipv4 of your machine "
echo " Press Any key to start......................"
read -n 1 -s
clear
curl --user YOUR-DOMAIN:YOUR-KEY https://ipv4.nsupdate.info/nic/update

echo
echo
echo " Press any key to update IPv6 Nameserver now ............"
read -n 1 -s
clear
curl --user YOUR-DOMAIN:YOUR-KEY https://ipv6.nsupdate.info/nic/update
echo
echo
echo "I Hope All Set .. Is Host UP or Down !!!!! Checking now Press any Key"
read -n 1 -s
clear
nmap -v -6 YOUR-DOMAIN
echo " Press any key to continue"
read -n 1 -s
echo
echo
echo "Checking one more time with extra details"
HEAD -E YOUR-DOMAIN:YOUR-KEY
echo " Press A key to Exit "
read -n 1 -s
clear
systemctl restart httpd 
echo "Good Bye !!! I need a key pressed "
read -n 1 -s
