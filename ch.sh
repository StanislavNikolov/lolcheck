#!/bin/env bash

group=$1
task=$2
timel=$3

echo "========== $task =========="

for i in code/$group/*
do
	if [[ "$i" == "ch.sh" ]]
	then
		echo -n
	else
		pushd . > /dev/null
		cd $i
		g++ $task.cpp -O2 -o $task &> /dev/null
		if [ -f ./$task ]
		then
			echo -n "$i: "
			STATUS="min" programming_check ../../../tests/$group/$task/tests ./$task $timel;
		fi
		popd > /dev/null
	fi
done;
