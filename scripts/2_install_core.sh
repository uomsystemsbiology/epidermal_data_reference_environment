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
wget --progress=dot:giga -q -O MCR_R2015a_glnxa64_installer.zip "http://au.mathworks.com/supportfiles/downloads/R2015a/deployment_files/R2015a/installers/glnxa64/MCR_R2015a_glnxa64_installer.zip"

echo Getting the uncompiled MATLAB scripts from git | tee -a $log 
mkdir epidermal_data
git clone https://github.com/uomsystemsbiology/epidermal_data.git epidermal_data

echo Getting the released data
wget --progress=dot:mega -q -O released_data.zip "https://cloudstor.aarnet.edu.au/plus/index.php/s/T8ILpbE3h1Ut8Yn/download"

echo Getting build info from git | tee -a $log
git --git-dir ~/epidermal_data/.git log --max-count=1 --format=format:"Last Commit: %h%nAuthor: %an%nCommit Date: %ad%n" > /vagrant/temp/build_info.txt

printf 'MCR R2015a' >> /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt

echo Copying the compiled MATLAB scripts from the data directory| tee -a $log
mkdir epidermal_data/compiled
cp -R /vagrant/temp/data/epidermal_data/compiled/* -t epidermal_data/compiled
cp /vagrant/temp/data/epidermal_data/compile_epidermal_data.sh epidermal_data/compile_epidermal_data.sh

echo Completed install_core.sh | tee -a $log