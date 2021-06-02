#!/bin/bash

echo "Building yagna..." && \
cd yagna && chmod +x ./build.sh && ./build.sh  && cd .. && \
echo "Building ya-runtime-vm..." && \
cd ya-runtime-vm && chmod +x ./build.sh && ./build.sh && cd .. && \ 
echo "Building ya-runtime-wasi..."
cd ya-runtime-wasi && chmod +x ./build.sh && ./build.sh && cd .. 


