#!/bin/bash
#SBATCH --job-name=lab4
#SBATCH --output=lab4_%j.txt
#SBATCH --partition=hpc-bio-nikola-cpu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load anaconda/2025.06

echo "Ejecutando 10^7 elementos"
ipython reduc-operation-alumno23.ipynb 10000000

echo ""

echo "Ejecutando para 10^8 elementos"
ipython reduc-operation-alumno23.ipynb 100000000

module unload anaconda/2025.06

