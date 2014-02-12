#!/bin/bash

# Prepare correct conf file and norms, single run.
# dt, steps, size, spacing, name, save, h, file
echo "Results of multi_run.sh were generated here automatically." > summary-multi.txt
echo "# 100 x 100" >> summary-multi.txt
./prepare.py 0.4 501 101,101 1,1 AdvRectSchemaCIR 500 1 000500
./single_run.sh AdvRectSchemaCIR
./prepare.py 0.4 501 101,101 1,1 AdvRectSchemaCIPExt 500 1 000500
./single_run.sh AdvRectSchemaCIPExt
./prepare.py 0.4 501 101,101 1,1 AdvRectSchemaCIP23Ext 500 1 000500
./single_run.sh AdvRectSchemaCIP23Ext

echo "# 200 x 200" >> summary-multi.txt
./prepare.py 0.2 1001 201,201 0.5,0.5 AdvRectSchemaCIR 1000 0.5 001000
./single_run.sh AdvRectSchemaCIR
./prepare.py 0.2 1001 201,201 0.5,0.5 AdvRectSchemaCIPExt 1000 0.5 001000
./single_run.sh AdvRectSchemaCIPExt
./prepare.py 0.2 1001 201,201 0.5,0.5 AdvRectSchemaCIP23Ext 1000 0.5 001000
./single_run.sh AdvRectSchemaCIP23Ext

echo "# 400 x 400" >> summary-multi.txt
./prepare.py 0.1 2001 401,401 0.25,0.25 AdvRectSchemaCIR 2000 0.25 002000
./single_run.sh AdvRectSchemaCIR
./prepare.py 0.1 2001 401,401 0.25,0.25 AdvRectSchemaCIPExt 2000 0.25 002000
./single_run.sh AdvRectSchemaCIPExt
./prepare.py 0.1 2001 401,401 0.25,0.25 AdvRectSchemaCIP23Ext 2000 0.25 002000
./single_run.sh AdvRectSchemaCIP23Ext

echo "# 800 x 800" >> summary-multi.txt
./prepare.py 0.05 4001 801,801 0.125,0.125 AdvRectSchemaCIR 4000 0.125 004000
./single_run.sh AdvRectSchemaCIR
./prepare.py 0.05 4001 801,801 0.125,0.125 AdvRectSchemaCIPExt 4000 0.125 004000
./single_run.sh AdvRectSchemaCIPExt
./prepare.py 0.05 4001 801,801 0.125,0.125 AdvRectSchemaCIP23Ext 4000 0.125 004000
./single_run.sh AdvRectSchemaCIP23Ext

echo "# 1600 x 1600" >> summary-multi.txt
./prepare.py 0.025 8001 1601,1601 0.0625,0.0625 AdvRectSchemaCIR 8000 0.0625 008000
./single_run.sh AdvRectSchemaCIR
./prepare.py 0.025 8001 1601,1601 0.0625,0.0625 AdvRectSchemaCIPExt 8000 0.0625 008000
./single_run.sh AdvRectSchemaCIPExt
./prepare.py 0.025 8001 1601,1601 0.0625,0.0625 AdvRectSchemaCIP23Ext 8000 0.0625 008000
./single_run.sh AdvRectSchemaCIP23Ext
