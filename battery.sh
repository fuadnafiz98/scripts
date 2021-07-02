#!/bin/bash
while :; 
do 
result=$(acpi | grep "Battery 1: Charging" | grep -oh [0-9][0-9]% | grep -oh [0-9]*) && echo $result
echo $result
if [[ $result -gt 95 ]]
then
  zenity --error --text="🔥🔥Charger🔥🔥" --width=200 --height=200
fi
sleep 1; 
done
