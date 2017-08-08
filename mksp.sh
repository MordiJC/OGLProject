#!/usr/bin/env bash

function pause() {
	read -p "$*"
}

pushd `pwd` &> /dev/null

for dir in "$@"; do
	{
	if [ -d "$dir" ] ; then 
		continue
	fi

	mkdir "$dir"
	
	pushd `pwd`

	cd "$dir"
	mkdir include src
	touch "CMakeLists.txt"

	pushd `pwd`
	cd include
	mkdir "$dir"
	popd

	pushd `pwd`
	cd src
	mkdir "$dir"
	cd "$dir"
	mkdir "Impl"
	popd

	popd

	} &> /dev/null
	echo "$dir - project created" 2>&1 
done ;

popd &> /dev/null
