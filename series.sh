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
		selectt
	done
}
: '
function valditaion(){ 
#mahdi
#check the array

}
'


function selectt () {
#balsam
select option in displayArray displaySortedArray max min average size sum exit
do
   case $option in
      displayArray) 
         echo "displayArray"
         ;;
      displaySortedArray)
         echo "displaySortedArray"
      ;;
      max) 
         echo "max" 
      ;;
       min) 
         echo "min"
      ;;
       average) 
         echo "average"
      ;;
       size) 
         echo "size"
      ;;
       sum) 
         echo "sum"
      ;;
       exit) 
         echo "exit"
         exit
      ;;
      *) echo "ERROR: Invalid selection" 
      ;;
   esac
done
}

: '

function sortedArray(){

#add values to sortedArray=0 and print

sortedArray=($(for l in ${array[@]}; do echo $l; done | sort -n))
for elem in ${sortedArray[@]}
do 
  echo $elem
done

}
'

function Max(){
#hadeel
sortedArray=($(for l in ${array[@]}; do echo $l; done | sort -n | tail -n 1))
for elem in ${sortedArray[@]}
do 
  echo $elem
done

}
function Min(){
#hadeel
sortedArray=($(for l in ${array[@]}; do echo $l; done | sort -n | head -n 1))
for elem in ${sortedArray[@]}
do 
  echo $elem
done

}
: '
function average(){
#victor
}
'


function size(){
#balsam
local size=${#array[@]}
echo $size
}


function Sum (){

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

if [[ ${#array[@]} -lt 3 ]]
	then
	input
else
echo "ok"

#valditaion
#selectt
fi
}

array=("$@")
main 
echo ----------------------
	Sum
	Min
	Max
echo ----------------------
result="$(size)"
echo "return value $result"

: '
b=($(for l in ${arr[@]}; do echo $l; done | sort -n))
for elem in ${b[@]}
do 
  echo $elem
done

'

