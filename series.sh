#! /bin/bash
array=0
sortedArray=0


function input(){

	echo "You entered less than 3 numbers"
	echo "Enter 3 or more numbers : "
	read -a array
	while [[ ${#array[@]} -lt 3 ]]
	do
		echo "Enter 3 or more numbers : "
		
		read -a array
		#call valition func
		#call select func
	done
}

function sum (){

local sumElements=0
local index_counter=${#array[@]}

i=0
while [[ $i -lt $index_counter ]] 
	do
		sumElements=$(( sumElements + ${array[i]}))
		let i=i+1
	done
echo "there are $index_counter elements in array and their sum is $sumElements"

}




function main(){
#check external with if 
if [[ $# -lt 3 ]]
	then
	sum
	input
	sum
else
sum
echo "ok"
array=$@
#valditaion
#selectt
sum
fi
}


main $@
