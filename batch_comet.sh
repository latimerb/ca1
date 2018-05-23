#!/bin/sh
#SBATCH --output=ca1%j.out
#SBATCH --partition=compute
#SBATCH --qos=nsg
#SBATCH --job-name=ca1
#SBATCH -t 00:60:00

#SBATCH --nodes=10
#SBATCH --ntasks-per-node=20

module load gsl

ibrun --npernode=24 nrniv -mpi main.hoc
