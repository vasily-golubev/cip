#!/usr/bin/python

# Author: Vasily Golubev <w.golubev@mail.ru>, (C) 2014
# Command line: dt, steps, size, spacing, name, save, h, file
import sys, os

# Fill conf file.
f_out = open('./advection2d.conf-prepared', 'w')
f_in = open('./advection2d.conf-etalon', 'r');
l_in = f_in.readlines()
for l in l_in:
	l_new = l
	if (l.find('DT_TEMPLATE') != -1):
		l_new = l.replace('DT_TEMPLATE', str(sys.argv[1]))
	elif (l.find('STEPS_TEMPLATE') != -1):
		l_new = l.replace('STEPS_TEMPLATE', str(sys.argv[2]))
	elif (l.find('SIZE_TEMPLATE') != -1):
		l_new = l.replace('SIZE_TEMPLATE', str(sys.argv[3]))
	elif (l.find('SPACING_TEMPLATE') != -1):
		l_new = l.replace('SPACING_TEMPLATE', str(sys.argv[4]))
	elif (l.find('NAME_TEMPLATE') != -1):
		l_new = l.replace('NAME_TEMPLATE', str(sys.argv[5]))
	elif (l.find('SAVE_TEMPLATE') != -1):
		l_new = l.replace('SAVE_TEMPLATE', str(sys.argv[6]))
	f_out.write(l_new);
f_out.close()
f_in.close()

# Fix L1 file.
f_out = open('./L1.py-prepared', 'w')
f_in = open('./L1.py-etalon', 'r');
l_in = f_in.readlines()
for l in l_in:
	l_new = l
	if (l.find('H_TEMPLATE') != -1):
		l_new = l.replace('H_TEMPLATE', str(sys.argv[7]))
	elif (l.find('FILE_TEMPLATE') != -1):
		l_new = l.replace('FILE_TEMPLATE', str(sys.argv[8]))
	f_out.write(l_new);
f_out.close()
f_in.close()
os.system('chmod u+x ./L1.py-prepared')

# Fix L_inf file.
f_out = open('./L_inf.py-prepared', 'w')
f_in = open('./L_inf.py-etalon', 'r');
l_in = f_in.readlines()
for l in l_in:
	l_new = l
	if (l.find('H_TEMPLATE') != -1):
		l_new = l.replace('H_TEMPLATE', str(sys.argv[7]))
	elif (l.find('FILE_TEMPLATE') != -1):
		l_new = l.replace('FILE_TEMPLATE', str(sys.argv[8]))
	f_out.write(l_new);
f_out.close()
f_in.close()
os.system('chmod u+x ./L_inf.py-prepared')
