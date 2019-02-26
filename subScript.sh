#!/bin/sh

#BSUB -J HF_packingDens_m
#BSUB -q memento
#BSUB -n 8
#BSUB -R "span[ptile=24]"
#BSUB -R "rusage[mem=6000]"
#BSUB -R "select[avx2]"
#BSUB -M 7000
#BSUB -W 72:00
#BSUB -u fyna@env.dtu.dk
#BSUB -B
#BSUB -N
#BSUB -o hpc3_%J.out
#BSUB -e hpc3_%J.err

module load OpenFoam/5.0/gcc-6.3.0-openmpi
./run
# mpirun -np 20 simpleFoam -parallel
