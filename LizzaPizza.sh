#!/bin/bash

#Arrays

#Variables-------------------------------------------------------------------------------
FIRST=55
SECOND=70
THIRD=99

ansone=0
anstwo=0
ansthree=0
selection=0


PIZ1="Cheese Pizza"
PIZ2="Vegan Pizza"
PIZ3="Lizza's Special"

#Functions------------------------------------------------------------------------------
function codefood
{
read -p "Which item would you like? >> " selection
 
while true
do
if [ "$selection" = "1" ]
then
 A=$ansone
  read -p "You have selected Cheese Pizza. How many would you like? >> " B
   case $B in
    [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
     read -p "Please enter a valid number >> " B ;;
      [123456789]*)
       ansone=$(($A+$B))
       echo "$ansone Cheese Pizza(s)"
        break
         esac
elif [ "$selection" = "2" ]
 then
 C=$anstwo
  read -p "You have selected Vegan Pizza. How many would you like? >> " D
   case $C in
    [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
     read -p "Please enter a valid number >> " D ;;
      [123456789]*)
       anstwo=$(($C+$D))
       echo "$ansone Vegan Pizza(s)"
        break
         esac

fi
       done
}

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

codefood
read -p "Would you like another item? >> " input
case $input in
 [yY]*)
  codefood;;
  [nN]*)
   break
esac

