#!/bin/bash

echo "The amount of times the word \"magic\" occurs in Linux kernel source tree:" 
find /usr/src/kernels -name '*.h' -exec grep -i 'magic' {} \; | wc -l
