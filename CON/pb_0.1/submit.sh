#!/bin/bash --login

#$ -N PSD_CON          # Name of the job
#$ -cwd                # Job will run from the current directory
#$ -l s_rt=48:00:00
#$ -m bea
#$ -M a.farmahini@manchester.ac.uk

# To prevent segmentation fault 
ulimit -s unlimited

# Run Pore Blazer Ver.4
./poreblazer.exe < input.dat > results.dat 

