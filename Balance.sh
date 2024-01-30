#!/bin/bash
#SBATCH --cpus-per-task=36
#SBATCH --mem=100
#SBATCH --account=uTS23_Manzoni
#SBATCH --time=24:00:00
#SBATCH --partition=gll_usr_prod
#SBATCH --output=balance_%j.out
#SBATCH --error=balance_%j.err
java -jar /leonardo/home/userexternal/melsalib/2d-robot-evolution/io.github.ericmedvet.robotevo2d.main/target/robotevo2d.main-1.3.5-SNAPSHOT-jar-with-dependencies.jar --expFile /leonardo/home/userexternal/melsalib/Esperimenti/Balance_$SLURM_ARRAY_JOB_ID.txt --nOfThreads 36 --nOfRuns 1
