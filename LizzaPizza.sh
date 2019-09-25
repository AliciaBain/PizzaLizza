#!/bin/bash

#Arrays

#Variables-------------------------------------------------------------------------------
FOOD1=55
FOOD2=70
FOOD3=99

DRINK1=9
DRINK2=5
DRINK3=4

ansone=0
anstwo=0
ansthree=0
ansfour=0
ansfive=0
anssix=0

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
  echo "You have selected Cheese Pizza."
  read -p " How many would you like? >> " B
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
  echo "You have selected Vegan Pizza." 
  read -p "How many would you like? >> " D
   case $D in
    [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
     read -p "Please enter a valid number >> " D ;;
      [123456789]*)
       anstwo=$(($C+$D))
        echo "$anstwo Vegan Pizza(s)"
         break
          esac
elif [ "$selection" = "3" ]
 then
 E=$ansthree
  echo "You have selected Lizza's Special."
  read -p " How many would you like? >> " F
   case $F in
    [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
     read -p "Please enter a number >> " F ;;
      [123456789]*)
       ansthree=$(($E+$F))
        echo "$ansthree Lizza's Special(s)"
         break
          esac
else 
 echo "Please enter a valid selection."
  sleep 1
  codefood
  fi
   done
loopitem
}
#####################################################
function loopitem #this function loops the food selection 
{
read -p "Would you like another item? >> " input
case $input in
 [yY]*)
  codefood;;
  [qwertuiopasdfghjklzxcvbmQWERTUIOPASDFGHJKLZXCVBM1234567890]*)
  echo "Please enter 'yes' or 'no'"
  loopitem;; 
  [nN]*)
esac
}
#####################################################  incomplete
function codedrink
{
 echo "drinks go here"
}
#####################################################
function loopdrink #this function loops the drink selection 
{
read -p "Would you like another item? >> " input
case $input in
 [yY]*)
  codedrink;;
  [qwertuiopasdfghjklzxcvbmQWERTUIOPASDFGHJKLZXCVBM1234567890]*)
  echo "Please enter 'yes' or 'no'"
  loopitem;;
  [nN]*)
esac
}
#####################################################
function drinkmenu
{
 echo "drink menu goes here"
}
#####################################################
function foodmenu #Displays food menu
{
echo "F O O D  M E N U"
echo "--------------------------------"

printf "1) Cheese Pizza - $"55"\n - Bread bits mixed into a pile of tomatoe sauce. *Does not come with cheese\n"

printf "2) Vegan Pizza - $"70"\n - A Whole Tomatoe\n"

printf "3) Lizza's Special - $"99"\n - Hot melted cheese, comes with a metal straw to drink it with\n"
echo ""
}
##################################################### incomplete
function order #Displays current order
{
 printf "Your Current Order:\n -Cheese Pizza: $ansone \n-Vegan Pizza:" 

}
#####################################################
function title #Clears the screen then displays title
{
	clear

echo "    __    ______________   ___   _ "
echo "   / /   /  _/__  /__  /  /   | ( )_____ "
echo "  / /    / /   / /  / /  / /| | |// ___/ "
echo " / /____/ /   / /__/ /__/ ___ |  (__  ) "
echo "/_____/___/  /____/____/_/  |_| /____/ "
printf "\n"
	}                              

#####################################################
function total
{
ITEM1=$(($ansone*$FOOD1))
ITEM2=$(($anstwo*$FOOD2))
ITEM3=$(($ansthree*$FOOD3))
ITEM4=$(($ansfour*$DRINK1))
ITEM5=$(($ansfive*$DRINK2))
ITEM6=$(($anssix*$DRINK3))

Z=.07
SUM=$(($ITEM1+$ITEM2+$ITEM3+$ITEM4+$ITEM5+$ITEM6))
TAX=$(echo "$SUM*$Z"|bc)
TOTAL=$(echo "$SUM+$TAX"|bc)
 echo "Total $"$TOTAL""
}
#---------------------------------------------------------------------------------------


title

echo "Motto: I'm lovin' it"

echo "About Us: We're"

sleep 5


#Food menu selection
title
foodmenu

codefood

total
