#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --qos=normal
#SBATCH --job-name=ca1
#SBATCH --output=ca1%j.out
#SBATCH --time 0-06:00


echo "Starting model at $(date)"


mpirun nrniv -mpi main.hoc
