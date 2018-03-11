#!/bin/bash

clear

echo "Enter date: "
read -p " " thedate

echo "Enter transaction details:"
read -p " " trandetails

#echo "Enter category"
#read -p " " catg

#echo "Enter subcategory"
#read -p " " subcatg
#echo $catg
#echo $subcatg

#echo $REPLY
#echo $trandetails
echo "Enter cost: " 
read -p " " cost

echo "Enter a comment: "
read -p " " userComment

echo "Has this transcation cleared (y) or not (n):" 
read -p " " stateVar
#echo $stateVar

echo "Where is this money going: asset(1), income(2), expense(3): "
read -p " " xGoing
echo $xGoing

echo "Where is this money coming from: asset(1), income(2), expense(3):"
read -p " " xComing
echo $xComing

if [ "$xD" = "1" ]; then
	echo "1"       
elif [ "$xD" = "2" ]; then
	echo "2"
elif [ "$xD" = "3" ]; then
        echo "3"
fi



#printf '%s\n' $trandetails $(date +"%B") $(date +"%d") $(date +"%A") $(date +"%H") | paste -sd ',' >> $(date +"%B-%d-%Y").csv &
#printf '%s ' $(date +"%Y/%m/%d") "* " $trandetails >> $(date +"%B%d%Y").txt

printf '%s ' $thedate "$stateVar""T" "$trandetails" >> $(date +"%B%d%Y").txt
printf '\n' >> $(date +"%B%d%Y").txt
printf '%s ' "        " "Expenses:" $cost ";" $userComment >> $(date +"%B%d%Y").txt
echo -e "\n" >> $(date +"%B%d%Y").txt

 

