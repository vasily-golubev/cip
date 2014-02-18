#!/bin/bash

# Clean results and create folders.
rm -r ./result/
mkdir ./result/

# Run computations.
/home/vgolubev/grid_convergence/rect/build/rect ./advection2d.conf-prepared

# Calculate norm L_inf.
./L_inf.py-prepared
