#!/bin/bash

#SBATCH --nodes=10
#SBATCH --ntasks-per-node=20
#SBATCH --job-name=ca1
#SBATCH --output=ca1%j.out
#SBATCH --time 0-00:30

module load gsl

echo "Starting model at $(date)"

ibrun --npernode=24 nrniv -mpi main.hoc
