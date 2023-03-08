#! /bin/bash
array=0
sortedArray=0


function input(){

	echo "You entered less than 3 numbers"
	echo "Enter 3 or more numbers : "
	read -a arr
	while [[ ${#arr[@]} -lt 3 ]]
	do
		echo "Enter 3 or more numbers : "
		
		read -a array
		#call valition func
		#call select func
	done
}
: '
function valditaion(){ 
#mahdi
#check the array

}


function selectt () {
#balsam

}

function sortedArray(){

#add values to sortedArray=0 and print

sortedArray=($(for l in ${array[@]}; do echo $l; done | sort -n))
for elem in ${sortedArray[@]}
do 
  echo $elem
done

}


function max(){
#hadeel
}

function min(){
#hadeel
}

function average(){
#victor
}

function size(){
#balsam
}

function sum (){
#victor
}


'

function main(){
#check external with if 
if [[ $# -lt 3 ]]
	then
	input
else
echo "ok"
array=$@
#valditaion
#selectt
fi
}


main $@

: '
b=($(for l in ${arr[@]}; do echo $l; done | sort -n))
for elem in ${b[@]}
do 
  echo $elem
done

'

