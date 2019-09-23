#!/bin/bash

#Variables
FIRST=55
SECOND=70
THIRD=99

function food
{
clear
echo "Menu:"
echo "--------------------------------"

echo "Food: "

printf "1) Cheese Pizza - "$"55\n - Bread bits mixed into a pile of tomatoe sauce. *Does not come with cheese\n"

printf "2) Vegan Pizza - "$"70\n - A Whole Tomatoe\n"

printf "3) Lizza's Special - "$"99\n - Hot melted cheese, comes with a metal straw to drink it with\n"
}

#This is our pizza place

clear

printf 'WELCOME TO OUR PIZZA PLACE\n'
echo "         _______ _____ _____          |"
echo "  |         |        /     /     /\     ______"
echo "  |         |       /     /     /  \    |"
echo "  |         |      /     /     /----\   |____"
echo "  |         |     /     /     /      \       |"
echo "  |_____ ___|___ /____ /____ /        \ _____| "

echo "Motto: I'm lovin' it"

echo "About Us: We're"

sleep 5


#Food menu selection

food

read -p "Which item would you like? >> " selection

while true
do
if [ "$selection" = "1" ] || [ "$selection" = "Cheese Pizza" ] || [ "$selection" = "c" ] 
 then
  read -p "You have selected Cheese Pizza. How many would you like? >> " ansone
   if [ $ansone = * ]
    then 
     read -p "Please enter a valid number >> " ansone
      fi

        echo ""
      echo "Would you like another Pizza?"
       
       read input
        case $input in
        Y|y|yes|Yes|Y*)
        food
         read -p "Which item would you like? >> " selectiontwo;;
        n|N|No|no|N*|n*)  
         break
          esac 
 else
  read -p "Invalid selection. Please Select an item >> " selection
fi
done

#function thing
#{
#case $ans in
#y|Y|yes|Yes|y*|Y*
#esac
#}

function taxes
{
 A=.07
 SUM=$(($1 + $2))
 TAX=$(echo "$SUM*$A"|bc)
 REAL=$(echo "$SUM+$TAX"|bc)
 echo "Total: $"$REAL""
}

