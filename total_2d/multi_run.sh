#!/bin/bash

#	AdvRectSchemaBW
#	AdvRectSchemaCIP23Ext
#	AdvRectSchemaCIPExt
#	AdvRectSchemaCIPMMExt
#	AdvRectSchemaCIR
#	AdvRectSchemaCIRExt
#	AdvRectSchemaFROMM
#	AdvRectSchemaGC22Ext
#	AdvRectSchemaGC23Ext
#	AdvRectSchemaGC2LExt
#	AdvRectSchemaGC2RExt
#	AdvRectSchemaGC3Ext
#	AdvRectSchemaGybrid2
#	AdvRectSchemaLUD
#	AdvRectSchemaLW
#	AdvRectSchemaMMFROMM
#	AdvRectSchemaMMRusanov3
#	AdvRectSchemaMMSymm4th
#	AdvRectSchemaMMThird1
#	AdvRectSchemaMMUW3
#	AdvRectSchemaRusanov3
#	AdvRectSchemaSymm4th
#	AdvRectSchemaTVD2CHARM
#	AdvRectSchemaTVD2HCUS
#	AdvRectSchemaTVD2HQUICK
#	AdvRectSchemaTVD2Koren
#	AdvRectSchemaTVD2MC
#	AdvRectSchemaTVD2Minmod
#	AdvRectSchemaTVD2Osher
#	AdvRectSchemaTVD2Ospre
#	AdvRectSchemaTVD2Smart
#	AdvRectSchemaTVD2SuperBee
#	AdvRectSchemaTVD2Sweby
#	AdvRectSchemaTVD2UMIST
#	AdvRectSchemaTVD2VanAlbada1
#	AdvRectSchemaTVD2VanAlbada2
#	AdvRectSchemaTVD2VanLeer
#	AdvRectSchemaThird1
#	AdvRectSchemaUW3
#	AdvRectSchemaWENO3

# Prepare correct conf file and norms, single run.
# dt, steps, size, spacing, name, save, file
NAME=""
echo "Generated automatically." > summary-multi.txt
NAME="AdvRectSchemaCIR"
echo $NAME >> summary-multi.txt
./prepare.py 0.004 501,5001 100,100 0.02,0.02 $NAME 500 000500
./single_run.sh
./prepare.py 0.002 1001,1001 200,200 0.01,0.01 $NAME 1000 001000
./single_run.sh
./prepare.py 0.001 2001,2001 400,400 0.005,0.005 $NAME 2000 002000
./single_run.sh
./prepare.py 0.0005 4001,4001 800,800 0.0025,0.0025 $NAME 4000 004000
./single_run.sh
./prepare.py 0.00025 8001,8001 1600,1600 0.00125,0.00125 $NAME 8000 008000
./single_run.sh

cat summary-multi.txt
