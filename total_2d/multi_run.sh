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
# dt, steps, size, spacing, name, save, h, file
NAME=""
echo "Generated automatically." > summary-multi.txt
NAME="AdvRectSchemaCIP23Ext"
echo $NAME >> summary-multi.txt
./prepare.py 0.4 501 101,101 1,1 $NAME 500 1 000500
./single_run.sh
./prepare.py 0.2 1001 201,201 0.5,0.5 $NAME 1000 0.5 001000
./single_run.sh
./prepare.py 0.1 2001 401,401 0.25,0.25 $NAME 2000 0.25 002000
./single_run.sh
./prepare.py 0.05 4001 801,801 0.125,0.125 $NAME 4000 0.125 004000
./single_run.sh
./prepare.py 0.025 8001 1601,1601 0.0625,0.0625 $NAME 8000 0.0625 008000
./single_run.sh

cat summary-multi.txt

#echo "AdvRectSchema" >> summary-multi.txt
#./prepare.py 0.4 501 101,101 1,1 AdvRectSchema 500 1 000500
#./single_run.sh AdvRectSchema
#./prepare.py 0.2 1001 201,201 0.5,0.5 AdvRectSchema 1000 0.5 001000
#./single_run.sh AdvRectSchema
#./prepare.py 0.1 2001 401,401 0.25,0.25 AdvRectSchema 2000 0.25 002000
#./single_run.sh AdvRectSchema
#./prepare.py 0.05 4001 801,801 0.125,0.125 AdvRectSchema 4000 0.125 004000
#./single_run.sh AdvRectSchema
#./prepare.py 0.025 8001 1601,1601 0.0625,0.0625 AdvRectSchema 8000 0.0625 008000
#./single_run.sh AdvRectSchema
