#!/bin/bash 
#Usuage bash key.sh key.pem 
#FIle variable contain pem key"

FILE="$1"
LOCATION="/home/user/.ssh/authorized_keys"

check()

{
if [ -f $FILE ]

then

echo "Key File found,preparing to transfer"

else

echo "File not found "

exit 0
fi
}

while read server; do

echo $server
#scp -p $FILE $server:$LOCATION

done < ips.txt


