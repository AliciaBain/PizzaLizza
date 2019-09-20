#!/bin/bash

#This is our pizza place
clear
echo "         _______ _____ _____          |"
echo "  |         |        /     /     /\     ______"
echo "  |         |       /     /     /  \    |"
echo "  |         |      /     /     /----\   |____"
echo "  |         |     /     /     /      \       |"
echo "  |_____ ___|___ /____ /____ /        \ _____| "

echo "Motto: I'm lovin' it"

echo "About Us: We're"

echo "Menu:"
echo "--------------------------------"

echo "Food:"

printf "1) Cheese Pizza: $"55"\n - Bread bits mixed into a bowl of tomatoe sauce, does not come with cheese.\n"



function taxes
{
 A=.07
 SUM=$(($1 + $2))
 TAX=$(echo "$SUM*$A"|bc)
 REAL=$(echo "$SUM+$TAX"|bc)
 echo "Total: $"$REAL""
}

