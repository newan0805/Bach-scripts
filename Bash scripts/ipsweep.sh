#!/bin/bash

if ["$1" == ""]
then
echo "Enter an IP Address!"
echo "Hint: ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

# echo "wanna do nMap scan? (y/n)"
# read input
# # then
# echo "$input "
# if [$input == "`y"]
# then
# echo "said yes!"

# else 
# echo "said no!"
# fi


# then

# for ip in $(cat ip.txt); do nmap $ip; done

#./ipsweep.sh