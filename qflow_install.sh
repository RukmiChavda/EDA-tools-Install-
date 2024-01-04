############################################
############ UPDATE THE SYSTEM #############
############################################
sudo apt update -y

############################################
########### INSTALL DEPEDENCIES ############
############################################
sudo apt install csh tcsh -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt install build-essential git -v
sudo apt install git -y
sudo apt install checkinstall zlib1g-dev libssl-dev -y
sudo apt install libgsl-dev -y
sudo apt install libx11-dev -y


############################################
####### DIRECTORY TO INSTALL TOOLS #########
############################################
mkdir QFLOW
cd QFLOW

############################################
############# CMAKE DOWNLOAD ###############
############################################
wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz

tar -xvf cmake-3.18.2.tar.gz
rm cmake-3.18.2.tar.gz

cd cmake-3.18.2
./bootstrap && make && sudo make install
cd

############################################
############# PYTHON DOWNLOAD ##############
############################################
sudo apt install python3.8


############################################
############## TCL DOWNLOAD ################
############################################
sudo apt install tcl-dev tk-dev -y
sudo apt install python3-tk -y

############################################
############# YOSYS DOWNLOAD ###############
############################################
sudo apt install yosys -y

############################################
########### GRAYWOLF DOWNLOAD ##############
############################################
cd QFLOW
git clone https://github.com/rubund/graywolf.git
cd graywolf
git checkout 0.1.6

mkdir build
cd build
cmake .. && make && sudo make install
cd

############################################
############ QROUTER DOWNLOAD ##############
############################################ 
cd QFLOW
git clone https://github.com/RTimothyEdwards/qrouter.git
cd qrouter
git checkout qrouter-1.4
./configure && make && sudo make install
cd 

############################################
############# MAGIC DOWNLOAD ###############
############################################
cd QFLOW
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
git checkout magic-8.3
./configure && make && sudo make install

cat make.log
cat install.log
cd

############################################
############# NETGEN DOWNLOAD ##############
############################################
cd QFLOW
git clone https://github.com/RTimothyEdwards/netgen.git
cd netgen
git checkout netgen-1.5
./configure && make && sudo make install
cd

############################################
############# QFLOW DOWNLOAD ###############
############################################
cd QFLOW
git clone https://github.com/RTimothyEdwards/qflow.git
cd qflow
git checkout qflow-1.4
./configure && make && sudo make install 
cd

############################################
########### INWAKING THE QFLOW #############
############################################
qflow gui 