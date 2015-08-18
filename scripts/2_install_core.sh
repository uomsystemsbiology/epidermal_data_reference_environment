#install_core.sh installs packages and gets the code
#and data required for the reference environment.  Configuration
#usually happens later in configure_core.sh unless something 
#depends on it here.

log=/vagrant/temp/install.log
echo Started install_core.sh | tee -a $log

echo Installing packages | tee -a $log
sudo apt-get -y update 
sudo apt-get -y install unzip libxt6 libxtst6
echo Completed package installation | tee -a $log

echo Getting MATLAB Runtime install files | tee -a $log
wget -q -O MCR_R2015a_glnxa64_installer.zip "http://au.mathworks.com/supportfiles/downloads/R2015a/deployment_files/R2015a/installers/glnxa64/MCR_R2015a_glnxa64_installer.zip"

echo Getting the Barzel et al uncompiled code from git | tee -a $log 
mkdir barzel_et_al_2013
git clone https://github.com/baruchbarzel/NatureBiotech-31-720.git barzel_et_al_2013/code

echo Getting build info from git | tee -a $log
git --git-dir ~/barzel_et_al_2013/code/.git log --max-count=1 --format=format:"Last Commit: %h%nAuthor: %an%nCommit Date: %ad%n" > /vagrant/temp/build_info.txt

printf '\nMCR R2015a' >> /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt

echo Copying the Barzel et al compiled code from the data directory| tee -a $log
cp -R /vagrant/temp/data/barzel_et_al_2013/* -t barzel_et_al_2013/

echo Completed install_core.sh | tee -a $log