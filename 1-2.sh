##Homework 1-2. Prints contents of user specified directory in reverse.##

#!/bin/sh

function reverse(){
	size=${#list[@]}	#length of array
	((size--))	#decrements for reverse count

	for i in ${list[@]}	#prints array elements from reverse order
	do
		echo ${list[size]}
		((size--))
	done
}

function main(){
	cd $1 #changes directory to parameter specified directory

	for i in `ls`	#for items in ls
	do
		list=("${list[@]}" "$i")	#appends items to an array
	done

	reverse #calls reverse function
}

main $1 #calls main and accepts parameter
