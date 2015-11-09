#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

echo Copying the compiled code into the project directory | tee -a $log
cp /home/sbl/epidermal_data/compiled/recreate_pMEK_heterogeneity_fig  /home/sbl/epidermal_data/code/recreate_pMEK_heterogeneity_fig
cp /home/sbl/epidermal_data/compiled/run_recreate_pMEK_heterogeneity_fig.sh  /home/sbl/epidermal_data/code/run_recreate_pMEK_heterogeneity_fig.sh  

echo Executing recreate_pMEK_heterogeneity_fig | tee -a $log
cd /home/sbl/epidermal_data/code
./run_recreate_pMEK_heterogeneity_fig.sh /usr/local/MATLAB/MATLAB_Runtime/v85

echo Completed analysis | tee -a $log
$SHELL