#!/bin/bash
#SBATCH --time=00:01:00
#SBATCH --partition=regular

# Clear the environment
module purge 
# Load python module
module load Python/3.11.3-GCCcore-12.3.0
# module load SciPy-bundle/2023.07-gfbf-2023a # Not sure if this is correct, there is no matching python name in the module name.

# Activate the venv
source $HOME/venvs/deepfont_env/bin/activate
# This should resolve to /home3/s2973782/venvs/deepfont_env/bin/activate

# Output python info (in a subshell, so the set -x doesn't leak)
(set -x;
python3 --version
which python3
python --version
which python
)

# Upgrade pip
pip install --upgrade pip wheel

# Install packages
pip install -r requirements.txt

# Run commands

# Deactivate the venv
deactivate
