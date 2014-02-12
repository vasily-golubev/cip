#!/bin/bash

# Clear results and create folders.
rm -r ./result/
mkdir ./result/

# Run computations.
/home/vgolubev/work/Petrov/developer/rect/build/rect ./advection2d.conf-prepared

# Calculate norms.
# In $1 you have to place current scheme name.
echo $1 >> summary-multi.txt
./L1.py-prepared
./L_inf.py-prepared
