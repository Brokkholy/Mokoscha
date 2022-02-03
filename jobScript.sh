#  mumax script
#  ====================
#  Queue
#$ -q graphix.q
#
#  Custom job name
#$ -N JOBNAME
#
#  Current working directory
#$ -cwd
#
# Mail at beginning/end/on suspension
#$ -m as
#
# Send mail to these users
#$ -M cbroers@physnet.uni-hamburg.de
#
#  Number of parallel cores
# $ -pe smp 1
#
#  Runtime (120min)
#$ -l h_cpu=02:00:00
#
# l gpu slots= < NUMBER OF GPU SLOTS >   
#$ -l gpu_slots=1
#
# $ -l gpu_gen=2080ti
#
#  Virtual Memory per Core
#$ -l h_vmem=8G
#
#  Stack Memory (more is bad)
#$ -l h_stack=8M
#
#  Output in..
#$ -o Output.log
#
#  Error in..
#$ -e Error.log
#
#  Bash commands will follow
#$ -S /bin/bash
#
# load modules
module load cuda/11.2.67 
module load anaconda/3.2020.11
conda activate yourEnvironmentName

# SIMULATION
SECONDS=0
fileName=FILENAME
python3 "pyScriptName.py" 
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
