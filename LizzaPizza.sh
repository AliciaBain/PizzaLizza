#!/bin/bash
<<<<<<< HEAD
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
=======
>>>>>>> a613252bb1eb6b4e54f56b0df2a2c868e5c5e2eb
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
<<<<<<< HEAD

sleep 5


#Food menu selection
food
=======
echo "--------------------------------"
echo "           PIZZA MENU"
echo "--------------------------------"

printf '1. Cheese Pizza $10\n'
printf '2. Pepperoni Pizza $15\n'
printf '3. Meat Pizza $20\n'
printf '4. Vegetarian Pizza $12\n'

read -p 'What kind of pizza would you like? [1-4] >> ' menup
PIZZA1="Cheese Pizza"
PIZZA2="Pepperoni Pizza"
PIZZA3="Meat Pizza"
PIZZA4="Vegetarian Pizza" #menu for pizza

if [ $menup -eq 1 ]
then
	echo -e "You have selected $PIZZA1"
elif [ $menup -eq 2 ]
then 
	echo -e "You have selected $PIZZA2"
elif [ $menup -eq 3 ]
then
        echo -e "You have selected $PIZZA3"
elif [ $menup -eq 4 ]
then
        echo -e "You have selected $PIZZA4"
else 
	echo -e "Uknown selection"
fi

printf 'What would you like to drink?' #drinks menu
printf '1. Soda $4\n'
printf '2. Juice $7\n'
printf '3. Smoothie $9\n'
read -p 'Choose a drink [1-3] >> ' drink
DRINK1=4
DRINK2=7
DRINK3=9

if [ $drink -eq 1 ]
then
	echo -e "You have selected soda"
elif [ $drink -eq 2 ]
then
	echo -e "You have selected juice"
elif [$drink -eq 3 ]
	then echo -e "You have selected smoothie"
else
	echo -e "Unknown selection"
fi

printf 'Would you like extra toppings?\n' #toppings
printf '1. Extra cheese $3\n'
printf '2. Extra mushrooms $2\n'
printf '3. Extra meat $5\n'
printf '4. Extra tomatoes $4\n'
read -p 'Choose extra toppings [1-4] >> ' #top
TOP1=3
TOP2=2
TOP3=5
TOP4=4
if [ $top -eq 1 ]
then
	echo -e "You have selected extra cheese"
elif [ $top -eq 2 ]
	then
        echo -e "You have selected extra mushrooms"
elif [ $top -eq 3 ]
then
        echo -e "You have selected extra meat"
elif [ $top -eq 4 ]
then
	echo -e "You have selected extra tomatoes"
else
	echo -e "Uknwown selection"
fi


if [ $menup -eq 1 ] && [ $top -eq 1 ]
then
	pizza $PIZZA1 $TOP1
elif [ $menup -eq 1 ] && [ $top -eq 2 ]
then
        pizza $PIZZA1 $TOP2
elif [ $menup -eq 1 ] && [ $top -eq 3 ]
then
        pizza $PIZZA1 $TOP3
elif [ $menup -eq 1 ] && [ $top -eq 4 ]
then
        pizza $PIZZA1 $TOP4


elif [ $menup -eq 2 ] && [ $top -eq 1 ]
then
        pizza $PIZZA2 $TOP1
elif [ $menup -eq 2 ] && [ $top -eq 2 ]
then
        pizza $PIZZA2 $TOP2
elif [ $menup -eq 2 ] && [ $top -eq 3 ]
then
        pizza $PIZZA2 $TOP3
	elif [ $menup -eq 2 ] && [ $top -eq 4 ]
then
        pizza $PIZZA2 $TOP4


elif [ $menup -eq 3 ] && [ $top -eq 1 ]
then
        pizza $PIZZA3 $TOP1
elif [ $menup -eq 3 ] && [ $top -eq 2 ]
then
        pizza $PIZZA3 $TOP2
	elif [ $menup -eq 3 ] && [ $top -eq 3 ]
then
        pizza $PIZZA3 $TOP3
elif [ $menup -eq 3 ] && [ $top -eq 4 ]
then
        pizza $PIZZA3 $TOP4


elif [ $menup -eq 4 ] && [ $top -eq 1 ]
then
        pizza $PIZZA4 $TOP1
elif [ $menup -eq 4 ] && [ $top -eq 2 ]
then
        pizza $PIZZA4 $TOP2
elif [ $menup -eq 4 ] && [ $top -eq 3 ]
then
        pizza $PIZZA4 $TOP3
elif [ $menup -eq 4 ] && [ $top -eq 4 ]
then
        pizza $PIZZA4 $TOP4
else
	echo "ERROR"
fi
>>>>>>> a613252bb1eb6b4e54f56b0df2a2c868e5c5e2eb

read -p "Which item would you like? >> " selection

while true
do
if ["$selection" -eq "1"] || ["$selection" -eq "Cheese Pizza"] || ["$selection" -eq "c*"] 
 then
  read -p "You have selected Cheese Pizza. How many would you like? >> " ansone
   if [$ansone -eq *]
    then
     echo ""
      echo "Would you like another Pizza?"
       fi
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

