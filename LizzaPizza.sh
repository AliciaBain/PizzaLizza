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
function title #Clears the screen then displays title
{

	clear
tput setaf 3
echo "    __    ______________   ___   _ "
echo "   / /   /  _/__  /__  /  /   | ( )_____ "
echo "  / /    / /   / /  / /  / /| | |// ___/ "
echo " / /____/ /   / /__/ /__/ ___ |  (__  ) "
echo "/_____/___/  /____/____/_/  |_| /____/ "
printf "\n"	
}     
#####################################################
function initialq #function asks user if they would like to order
{
tput setaf 6
read -p "Welcome to Lizza's Pizza, would you like to place an order? [y / n] " orderplease
  case $orderplease in
   [yY]*);;
   [nN]*)
    exit;; 
     *)
      echo "Please enter a valid selection"
       initialq
 esac
}
#####################################################
function foodmenu #Displays food menu
{
tput setaf 6

echo "F O O D  M E N U"
echo "--------------------------------"

printf "1) Cheese Pizza - $"55"\n - Bread bits mixed into a pile of tomatoe sauce. *Does not come with cheese\n"

printf "2) Vegan Pizza - $"70"\n - A Whole Tomatoe\n"

printf "3) Lizza's Special - $"99"\n - Hot melted cheese, comes with a metal straw to drink it with\n"
echo ""
}
#####################################################
function drinkmenu #just displays the drink menu
{
tput setaf 6

echo " D R I N K S   M E N U "
echo "--------------------------------"

printf "1) Wine - $"9"\n - A premium 1901 Merlot.\n" 

printf "2) Smoothie -$"5"\n - Red berries smoothie.\n" 

printf "3) Soda - $"4"\n - Fruit Punch flavoured soda.\n" 
echo ""
}
#####################################################
function codefood
{
tput setaf 6
read -p "Which food item would you like? >> " selection
 
while true
do
if [ "$selection" = "1" ]
then
 A=$ansone
  echo "You have selected Cheese Pizza."
  read -p " How many would you like? >> " B
   case $B in
    [1234567890]*)
     ansone=$(($A+$B))
      break;;
       *)
        echo "Please enter a valid number"
         sleep .6
          esac

elif [ "$selection" = "2" ]
 then
 C=$anstwo
  echo "You have selected Vegan Pizza." 
  read -p "How many would you like? >> " D
   case $D in
    [1234567890]*)
     anstwo=$(($C+$D))
      break;;
       *)
        echo "Please enter a valid number"
         sleep .6
          esac

elif [ "$selection" = "3" ]
 then
 E=$ansthree
  echo "You have selected Lizza's Special."
  read -p " How many would you like? >> " F
   case $F in
    [1234567890]*)
     ansthree=$(($E+$F))
      break;;
       *)
        echo "Please enter a number"
         sleep .6
          esac
else 
 echo "Please enter a valid selection."
  sleep .6
  codefood
  fi
   done
loopitem
}
#####################################################
function loopitem #this function loops the food selection 
{
selection=0
tput setaf 6
sleep .6
clear
title
foodmenu
order
tput setaf 6
read -p "Would you like another food item? >> " input
 case $input in
  [yY]*)
   codefood;;
   [nN]*);;
    *)
     echo "Please enter 'yes' or 'no'"
      loopitem
esac
}
#####################################################
function codedrink #this function allows you to select drinks
{
tput setaf 6
read -p "Which drink would you like? >> " selection

while true
do
if [ "$selection" = "1" ] 
 then
 da=$ansfour
  echo "You have selected Wine" 
  read -p " How many glasses would you like? >> " drinkone
   case $drinkone in
    [1234567890]*)
       ansfour=$(($da+$drinkone))
        break;;
         *)
          echo "Please enter a number"
           sleep .6
            esac

elif [ "$selection" = "2" ]
 then
 db=$ansfive
  echo "You have selected Smoothie." 
   read -p "How many Smoothies would you like? >> " drinktwo
    case $drinktwo in
     [1234567890]*)
      ansfive=$(($db+$drinktwo))
       break;; 
        *)
         echo "Please enter a valid number"
          sleep .6
           esac

elif [ "$selection" = "3" ]
 then
 dc=$anssix
  echo "You have selected Soda."
   read -p " How many cups would you like? >> " drinkthree
    case $drinkthree in
     [1234567890]*)
      anssix=$(($dc+$drinkthree))
       break;;
        *)
         echo "Please enter a valid number"
          sleep .6
           esac
else
 echo "Please enter a valid selection."
  sleep .6
  codedrink
  fi
   done
loopdrink
}
#####################################################
function loopdrink #this function loops the drink selection 
{
selection=0
tput setaf 6
sleep .6
clear
title
drinkmenu
order
tput setaf 6
read -p "Would you like another drink? >> " input
case $input in
 [yY]*)
  codedrink;;
  [nN]*);;
   *)
    echo "Please enter 'yes' or 'no'"
     loopdrink
esac
}
#####################################################
function drinkq #asks if the user will order a drink, if yes: displays title, drink menu, current order, and allows drink choice
{
tput setaf 6
 read -p "Would you like a drink? [y / n] " yn
  case $yn in
   [yY]*)
    title
    drinkmenu
    order
    codedrink;;
     [nN]*);;
      *)
       echo "Please enter a valid selection"
        drinkq
esac
}
#####################################################
function order #Displays current order
{
tput setaf 5
 printf "Your Current Order:\n \nFood:\n-Cheese Pizza(s): $ansone \n-Vegan Pizza(s): $anstwo \n-Lizza's Special(s): $ansthree\n"
 printf "\nDrink:\n-Wine(s): $ansfour \n-Smoothie(s): $ansfive \n-Soda(s): $anssix \n\n" 
tput sgr0
}
#####################################################
function total #calculates the total of your order including tax
{
tput setaf 5
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
tput setaf 3
 echo "Total: $"$TOTAL""
}
#---------------------------------------------------------------------------------------



title #clears the screen and displays the title
tput setaf 4
echo ""
echo "Motto: I'm lovin' it"

echo " "

printf "About Us: We are a virtual pizza place with specialties found no where else!\n And when we say no where else, we mean NOWHERE ELSE!"

sleep 5


#clears screen, displays title and Food & drink  menu selection
title
foodmenu
drinkmenu

#asks the user if they are going to order then displays food selection if yes
initialq
title
foodmenu
codefood

#clears screen, displays title and Drink menu selection
title
drinkmenu
order
drinkq

#Displays total cost and total amount of each item
sleep 1
title
order
total
echo ""
