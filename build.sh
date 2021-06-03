#!/bin/bash

target=$1

if [[ $target == "" ]] ; then
	echo "No target."
	exit 1
fi

if [[ $target == "yagna" ]] ; then 
	echo "Building yagna..." && \
	cd yagna && chmod +x ./build.sh && ./build.sh  && cd .. && \
fi

if [[ $target == "ya-runtime-vm" ]] ; then 
	echo "Building ya-runtime-vm..." && \
	cd ya-runtime-vm && chmod +x ./build.sh && ./build.sh && cd .. && \ 
fi

if [[ $target == "ya-runtime-wasi" ]] ; then 
	echo "Building ya-runtime-wasi..."
	cd ya-runtime-wasi && chmod +x ./build.sh && ./build.sh && cd .. 
fi

