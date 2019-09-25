#!/bin/bash

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

#Functions------------------------------------------------------------------------------
function codefood
{
read -p "Which food item would you like? >> " selection
 
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
sleep 2
clear
title
foodmenu
order
read -p "Would you like another food item? >> " input
case $input in
 [yY]*)
  codefood;;
  [qwertuiopasdfghjklzxcvbmQWERTUIOPASDFGHJKLZXCVBM1234567890]*)
  echo "Please enter 'yes' or 'no'"
  loopitem;; 
  [nN]*)
esac
}
#####################################################
function codedrink #this function allows you to select drinks
{
read -p "Which drink would you like? >> " selection

while true
do
if [ "$selection" = "1" ] 
 then
 da=$ansfour
  echo "You have selected Wine" 
  read -p " How many glasses would you like? >> " drinkone
   case $drinkone in
    [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
     read -p "Please enter a number >> " drinkone ;;
      [123456789]*)
       ansfour=$(($da+$drinkone))
        break
         esac

elif [ "$selection" = "2" ]
 then
 db=$ansfive
  echo "You have selected Smoothie." 
   read -p "How many Smoothies would you like? >> " drinktwo
    case $drinktwo in
     [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
      read -p "Please enter a valid number >> " drinktwo ;;
        [123456789]*)
         ansfive=$(($db+$drinktwo))
          break
           esac
elif [ "$selection" = "3" ]
 then
 dc=$anssix
  echo "You have selected Soda."
   read -p " How many cups would you like? >> " drinkthree
    case $drinkthree in
     [abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0]*)
      read -p "Please enter a valid number >> " drinkthree ;;
        [123456789]*)
         anssix=$(($dc+$drinkthree))
          break
           esac
else
 echo "Please enter a valid selection."
  sleep 1
  codedrink
  fi
   done
loopdrink
}
#####################################################
function loopdrink #this function loops the drink selection 
{
sleep 2
clear
title
drinkmenu
order
read -p "Would you like another drink? >> " input
case $input in
 [yY]*)
  codedrink;;
  [qwertuiopasdfghjklzxcvbmQWERTUIOPASDFGHJKLZXCVBM1234567890]*)
  echo "Please enter 'yes' or 'no'"
  loopdrink;;
  [nN]*)
esac
}
#####################################################
function drinkmenu #just displays the drink menu
{
echo " D R I N K S   M E N U "
echo "--------------------------------"

printf "1) Wine - $"9"\n - A premium 1901 Merlot.\n" 

printf "2) Smoothie -$"5"\n - Red berries smoothie.\n" 

printf "3) Soda - $"4"\n - Fruit Punch flavoured soda.\n" 
echo ""
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
 printf "Your Current Order:\n \nFood:\n-Cheese Pizza(s): $ansone \n-Vegan Pizza(s): $anstwo \n-Lizza's Special(s): $ansthree \n\n Drink:\n-Wine(s): $ansfour \n-Smoothie(s): $ansfive \n-Soda(s): $anssix \n\n" 

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
function total #calculates the total of your order including tax
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


title #clears the screen and displays the title
echo ""
echo "Motto: I'm lovin' it"

printf "About Us: We are a virtual pizza place with specialties found no where else!\n And when we say no where else, we mean NOWHERE ELSE!"

sleep 5


#clears screen, displays title and Food menu selection
title
foodmenu
codefood
#clears screen, displays title and Drink menu selection
title
drinkmenu
order
codedrink
#Displays total cost and total amount of each item
sleep 2
title
order
total
echo ""
