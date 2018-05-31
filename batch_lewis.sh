#!/bin/bash

#SBATCH -p Lewis,RC
#SBATCH -N 1
#SBATCH -A rc
#SBATCH -n 2
#SBATCH --qos=normal
#SBATCH --job-name=ca1
#SBATCH --output=ca1%j.out
#SBATCH --licenses=matlab:1
#SBATCH --time 0-00:30

module load matlab/matlab-R2018a
module load intel/intel-2016-update2
module load nrn/nrn-mpi-7.4
module load openmpi/openmpi-2.0.0

module list
echo "Starting model at $(date)"

#srun -N 1 -n 1 -c 1 --mem 11G matlab -nodesktop -nosplash -nodisplay -r "run('./input/connectivity.m');exit"

mpirun --mca mpi_warn_on_fork 0 nrniv -mpi main.hoc
