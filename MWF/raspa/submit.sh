#!/bin/bash --login

#$ -N IZA_Zeo           # Name of the job
#$ -cwd                 # Job will run from the current directory
#$ -l s_rt=150:00:00
#$ -m bea
#$ -M a.farmahini@manchester.ac.uk

# To prevent segmentation fault 
ulimit -s unlimited

# Load the required version
module load libs/intel-17.0/fftw3/serial/double/3.3.8 libs/lapack/3.5.0/gcc-4.8.5

export RASPA_DIR=/mnt/iusers01/ceas01/m86397ah/Installed_software/RASPA
$RASPA_DIR/bin/simulate



