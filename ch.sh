#!/bin/env bash

group=$1
task=$2
timel=$3

echo "========== $task =========="

for i in $group/*
do
	if [[ "$i" == "ch.sh" ]]
	then
		echo -n
	else
		pushd . > /dev/null
		cd $i
		if [ -f ./$task ]
		then
			# echo "Compiling $i: "
			# g++ $task.cpp -O2 -o $task
			echo -n "$i: "
			STATUS="min" programming_check ../../t_$task ./$task $timel;
		fi
		popd > /dev/null
	fi
done;
