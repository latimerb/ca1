#!/bin/bash

#SBATCH -N 5
#SBATCH -n 200
#SBATCH --qos=normal
#SBATCH --job-name=ca1
#SBATCH --output=ca1%j.out
#SBATCH --time 0-00:30


echo "Starting model at $(date)"

#srun -N 1 -n 1 -c 1 --mem 11G matlab -nodesktop -nosplash -nodisplay -r "run('./input/connectivity.m');exit"

mpirun nrniv -mpi main.hoc
