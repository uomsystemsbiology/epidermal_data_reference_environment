#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

echo Copying the compiled code into the project directory | tee -a $log
cp /home/sbl/epidermal_data/compiled/create_IF_data_summary  /home/sbl/epidermal_data/code/create_IF_data_summary
cp /home/sbl/epidermal_data/compiled/create_IF_data_summary.sh  /home/sbl/epidermal_data/code/run_create_IF_data_summary.sh  

echo Executing create_IF_data_summary | tee -a $log
cd /home/sbl/epidermal_data/code
./run_create_IF_data_summary.sh /usr/local/MATLAB/MATLAB_Runtime/v85

echo Completed analysis | tee -a $log
$SHELL