#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

echo This script executes the MATLAB code in the SupplementarySoftware2 directory
echo of https://github.com/baruchbarzel/NatureBiotech-31-720.git

echo Copying the Barzel et al compiled code into the project directory | tee -a $log
cp -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware2/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2
cp -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware3/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3 

echo Executing SupplementaryScripts2 | tee -a $log
cd /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2
./run_RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85

#sleep 2
#./Make 2>&1 | tee -a $log

echo Completed analysis | tee -a $log
$SHELL