#!/bin/bash
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
exit ;
else
echo "waiting for the keypress"
fi
done