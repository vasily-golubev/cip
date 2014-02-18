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
NAME="AdvRectSchemaSymm4th"
echo $NAME >> summary-multi.txt
./prepare.py 0.0005 64001 101 0.02 $NAME 64000 1 064000
./single_run.sh
./prepare.py 0.0005 32001 201 0.01 $NAME 32000 0.5 032000
./single_run.sh
./prepare.py 0.0005 16001 401 0.005 $NAME 16000 0.25 016000
./single_run.sh
./prepare.py 0.0005 8001 801 0.0025 $NAME 8000 0.125 008000
./single_run.sh
./prepare.py 0.0005 4001 1601 0.00125 $NAME 4000 0.0625 004000
./single_run.sh

cat summary-multi.txt
