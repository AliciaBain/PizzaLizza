#!/bin/bash

#Arrays
#ansone=()

#Variables-------------------------------------------------------------------------------
FIRST=55
SECOND=70
THIRD=99

PIZ1="Cheese Pizza"
PIZ2="Vegan Pizza"
PIZ3="Lizza's Special"

#Functions------------------------------------------------------------------------------
function food #Displays menu
{
echo "Menu:"
echo "--------------------------------"

echo "Food: "

printf "1) Cheese Pizza - "$"55\n - Bread bits mixed into a pile of tomatoe sauce. *Does not come with cheese\n"

printf "2) Vegan Pizza - "$"70\n - A Whole Tomatoe\n"

printf "3) Lizza's Special - "$"99\n - Hot melted cheese, comes with a metal straw to drink it with\n"
echo ""
}

function order #Displays current order
{
printf "Your selection so far:\n"
 if [ "$selection" = "1" ] || [ "$selection" = "Cheese Pizza"] || [ "$selection" = "cheese pizza"]
 then
	 echo "Food: $ansone($x) $PIZ1 "$"$(($FIRST+$ansone($x)))"
else 
echo ""
fi
}

function title #Clears the screen then displays title
{
	clear
echo "         _______ _____ _____          |"
echo "  |         |        /     /     /\     ______"
echo "  |         |       /     /     /  \    |"
echo "  |         |      /     /     /----\   |____"
echo "  |         |     /     /     /      \       |"
echo "  |_____ ___|___ /____ /____ /        \ _____| "
printf "\n"
}


#---------------------------------------------------------------------------------------


title

echo "Motto: I'm lovin' it"

echo "About Us: We're"

sleep 5


#Food menu selection
title
food

read -p "Which item would you like? >> " selection

while true
do
if [ "$selection" = "1" ] || [ "$selection" = "Cheese Pizza" ] || [ "$selection" = "C*" ]
 then
  read -p "You have selected Cheese Pizza. How many would you like? >> " ansone
   if [ $ansone -lt 1 ]
    then 
     read -p "Please enter a valid number >> " ansone
      else 
       echo "$ansone Cheese Pizza"	
       break
       fi
       fi
       done      

echo "Would you like another Pizza? [y or n]  "
    read input
       case $input in
        Y|y|yes|Yes|Y*)
         food
          read -p "Which item would you like? >> " selectiontwo;;
           n|N|No|no|N*|n*)  
            break
          esac 
# else
 # read -p "Invalid selection. Please Select an item >> " selection


#function thing
#{
#case $ans in
#y|Y|yes|Yes|y*|Y*
#esac
#}
