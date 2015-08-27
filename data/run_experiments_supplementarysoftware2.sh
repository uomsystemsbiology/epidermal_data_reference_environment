#!/bin/sh

# Set up logfile
log=/home/sbl/barzel_et_al_2013/run_experiments.log

echo;echo;echo
echo "### Overview
This shell script is part of the reference environment for the manuscript 
['Network link prediction by global silencing of indirect correlations'](https://dx.doi.org/10.1038/nbt.2601).  
It executes code to reproduce specific results described in the manuscript.   
You can find more information about this research at the 
[Project page](https://github.com/baruchbarzel/NatureBiotech-31-720.git).  

To find other versions of this reference environment, see Other Links below.  
To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This shell script reproduces results described in the manuscript and writes 
output to /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2/.

### Other links

[Manuscript link](https://dx.doi.org/10.1038/nbt.2601)

[Project page link](https://github.com/baruchbarzel/NatureBiotech-31-720.git)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/barzel2013network/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/barzel2013network_reference_environment)

[Bootable ISO](https://dx.doi.org/10.4225/49/55DA8FA8CE707)"
echo

echo Copying the Barzel et al compiled code into the project directory | tee -a $log
cp -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware2/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2 
sudo chmod 777 /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2/run_RUN.sh
sudo chmod 777 /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2/RUN

echo Executing SupplementaryScripts3 | tee -a $log
cd /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2
./run_RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85

echo Completed analysis | tee -a $log
$SHELL
