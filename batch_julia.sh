#!/bin/bash

#SBATCH --nodes=5
#SBATCH --ntasks-per-node=45
#SBATCH --qos=normal
#SBATCH --job-name=ca1
#SBATCH --output=ca1%j.out
#SBATCH --time 0-00:30


echo "Starting model at $(date)"


mpirun nrniv -mpi main.hoc
