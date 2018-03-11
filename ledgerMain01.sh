#!/bin/bash
#-----------------------------------#
# CLI to populate ledger input file #
#-----------------------------------#
clear
#-----------------------------------#
#          INPUTS FROM USER         #
#-----------------------------------#

echo "Enter date: "
read -p " " thedate

echo "Enter transaction details:"
read -p " " trandetails
#-----------------------------------#
#   DEBUGGING ASSERTION STATEMENTS  #
#-----------------------------------#

#echo "Enter category"
#read -p " " catg

#echo "Enter subcategory"
#read -p " " subcatg
#echo $catg
#echo $subcatg

#echo $REPLY
#echo $trandetails

#-----------------------------------#
#          INPUTS FROM USER         #
#-----------------------------------#

echo "Enter cost: " 
read -p " " cost

echo "Enter a comment: "
read -p " " userComment

echo "Has this transcation cleared (y) or not (n):" 
read -p " " stateVar
#echo $stateVar

echo "Where is this money going: asset(1) , expense (2):"
read -p " " xGoing
#echo $xGoing
echo "What category is it going to:?"
if [ "$xGoing" = "1" ]; then
	#do something
	echo "Ameritrade (1)"
	echo "Emergency savings (2)"
	echo "USAA Checking (3)"
	echo "WF Checking (4)"
	echo "WF Savings (5)"
	sleep 2s
elif [ "$xGoing" = "2" ]; then
	#do other
	echo "this is 2"
fi


echo "Where is this money coming from: asset(1), income(2), expense(3):"
read -p " " xComing
#echo $xComing

#-----------------------------------#
#           MAIN MONETARY           #
#        CATEGORY ASSIGNMENT        #
#-----------------------------------#

if [ "$xGoing" = "1" ]; then
	#echo "1"       
	varg="Assets"
	#echo $varg
#elif [ "$xGoing" = "2" ]; then
#	#echo "2"
#	varg="Income"
#	#echo $varg
elif [ "$xGoing" = "2" ]; then
        #echo "2"
	varg="Expenses"
	#echo $varg
fi


if [ "$xComing" = "1" ]; then
        #echo "1"       
        varc="Assets"
        #echo $varg
elif [ "$xComing" = "2" ]; then
        #echo "2"
        varc="Income"
        #echo $varg
elif [ "$xComing" = "3" ]; then
        #echo "3"
        varc="Expenses"
        #echo $varg
fi


#printf '%s\n' $trandetails $(date +"%B") $(date +"%d") $(date +"%A") $(date +"%H") | paste -sd ',' >> $(date +"%B-%d-%Y").csv &
#printf '%s ' $(date +"%Y/%m/%d") "* " $trandetails >> $(date +"%B%d%Y").txt

printf '%s ' $thedate "$stateVar""T" "$trandetails" >> $(date +"%B%d%Y").txt
printf '\n' >> $(date +"%B%d%Y").txt
printf '%s ' "        " "$varg:" "        "$cost ";" $userComment >> $(date +"%B%d%Y").txt
printf '\n' >> $(date +"%B%d%Y").txt
printf '%s ' "        " "$varc:" "        "$cost >> $(date +"%B%d%Y").txt
echo -e "\n" >> $(date +"%B%d%Y").txt

 

