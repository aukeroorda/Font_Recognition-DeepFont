# How this model is run on habrok

### Downloading Adobe_VFR_release

```shell
curl -L -o newName.zip https://www.dropbox.com/sh/o320sowg790cxpe/AADDmdwQ08GbciWnaC20oAmna?e=1?dl=1
```

Based on https://stackoverflow.com/a/37573857

## More resources on DeepFont:

Including something about BCR (and code to generate this?)
https://github.com/tesseract-ocr/tesseract/issues/996

### Constructing of venv

```sh
module load Python/3.11.3-GCCcore-12.3.0 # Construc the venv with a recent version of python

python3 -m venv $HOME/venvs/deepfont_env
source $HOME/venvs/deepfont_env/bin/activate

pip install --upgrade pip
pip install --upgrade wheel
```

### Load modules instead of installing using pip:

- imutils
- matplotlib
- opencv-python
- pip
- pipdeptree
- scikit-learn
- tensorflow

```sh
TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1
TensorFlow/2.11.0-foss-2022a-CUDA-11.7.0 # XXX This lowers the python version to 3.10.something

SciPy-bundle/2021.05-foss-2021a
SciPy-bundle/2021.10-foss-2021b
SciPy-bundle/2022.05-foss-2022a
SciPy-bundle/2023.02-gfbf-2022b
SciPy-bundle/2023.07-gfbf-2023a



OpenCV/4.6.0-foss-2022a-CUDA-11.7.0-contrib
OpenCV/4.6.0-foss-2022a-contrib
```
