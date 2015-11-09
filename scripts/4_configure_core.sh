#configure_core.sh sets up applications, compiles code and puts scripts
#in the appropriate places.  It runs after all the installation commands
#have completed

log=/vagrant/temp/install.log
echo Started configure_core.sh | tee -a $log

echo Unzipping data | tee -a $log
unzip -q released_data.zip -d epidermal_data

echo Setting up MATLAB Runtime install files | tee -a $log
unzip -q MCR_R2015a_glnxa64_installer.zip -d MCR_R2015a_glnxa64_installer
sudo ./MCR_R2015a_glnxa64_installer/install -mode silent -agreeToLicense yes

echo Deleting the MATLAB Runtime install files | tee -a $log
rm ~/MCR_R2015a_glnxa64_installer.zip
rm -r ~/MCR_R2015a_glnxa64_installer

echo Adding MATLAB Runtime library paths | tee -a $log
printf "/usr/local/MATLAB/MATLAB_Runtime/v85/runtime/glnxa64\n/usr/local/MATLAB/MATLAB_Runtime/v85/bin/glnxa64\n/usr/local/MATLAB/MATLAB_Runtime/v85/sys/os/glnxa64\n" | sudo tee /etc/ld.so.conf.d/matlab_runtime.conf

echo Copying login message to /etc/motd | tee -a $log
sudo cp /vagrant/temp/data/motd /etc/motd

echo Copying shell scripts to home directory | tee -a $log
sudo cp /vagrant/temp/data/recreate_pMEK_heterogeneity_fig.sh /home/sbl/recreate_pMEK_heterogeneity_fig.sh
sudo cp /vagrant/temp/data/create_IF_data_summary.sh /home/sbl/create_IF_data_summary.sh
sudo chmod 777 /home/sbl/recreate_pMEK_heterogeneity_fig.sh
sudo chmod 777 /home/sbl/create_IF_data_summary.sh

echo Linking the shell script into the root folder | tee -a $log
sudo ln -sv /home/sbl/recreate_pMEK_heterogeneity_fig.sh /recreate_pMEK_heterogeneity_fig.sh
sudo ln -sv /home/sbl/create_IF_data_summary.sh /create_IF_data_summary.sh

echo Completed configure_core.sh | tee -a $log