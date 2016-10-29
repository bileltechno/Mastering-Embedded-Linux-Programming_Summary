#!/bin/sh

mkdir allTargets; cd allTargets

for target in `../ct-ng list-samples | grep "\[" | awk '{print $2}'`
do
	mkdir $target
	cd $target
	../../ct-ng $target
	../../ct-ng build
	cd ../	
done
