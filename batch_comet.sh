#!/bin/sh
#SBATCH --output=ca1%j.out
#SBATCH --partition=compute           # submit to the 'large' queue for jobs > 256 nodes
#SBATCH --qos=nsg
#SBATCH --job-name=ca1
#SBATCH -t 00:60:00         # Run time (hh:mm:ss) - 1.5 hours

#SBATCH --nodes=10              # Total number of nodes requested (16 cores/node)
#SBATCH --ntasks-per-node=20            # Total number of mpi tasks requested

module load gsl

ibrun --npernode=24 /projects/ps-nsg/home/nsguser/applications/neuron7.4/installdir/x86_64/bin/nrniv  -mpi main.hoc