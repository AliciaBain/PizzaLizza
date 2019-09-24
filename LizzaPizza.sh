#!/bin/bash
#This will display our drinks
echo "            D R I N K S            "

#This will display our drinks array
echo "These are your options: "

#These are the arrays:

DrinkNumberArray="Wine Smoothie Soda"
PriceArray=("$ 9.00" "$ 5.00" "$ 3.00")

echo "1 . Wine     / $ 9.00"
echo "2 . Smoothie / $ 5.00"
echo "3 . Soda     / $ 3.00"

#This will ask your choice:
echo "Pleasemake a selection: "

select option in $DrinkNumberArray

do
 echo "You have selected $REPLY."

   echo "Your choice is $option."
 echo  "Your total is _______." 
done

read -p "Anything else? [y/n] >> " choice


if "$choice" == "y" || "$choice" == "Y"


