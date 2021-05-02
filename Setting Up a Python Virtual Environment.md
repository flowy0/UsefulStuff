# Setting up your python environment

These instructions are for installing using homebrew on Mac OS Big Sur



## Miniconda
```shell
brew install --cask miniconda
conda init "$(basename "${SHELL}")"

```



## Pyenv

```shell
brew install pyenv
# setup pyenv in your shell
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

#install python 3.9
pyenv install 3.9.4


brew install pyenv-virtualenv
# To enable auto-activation add to your profile:
echo -e 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.zshrc

echo -e 'PYENV_VIRTUALENV_DISABLE_PROMPT=1' >> ~/.zshrc
```


### Creating your python environment


#### For Conda installs:
```shell
conda create -n py39 python=3.9
# activate this venv
conda activate py39
```

#### For Pyenv installs:

```
# creates a new virtual env with python 3.9.4 in folder py39
pyenv virtualenv 3.9.4 py39
```

### Activate your environment
```
pyenv activate py39
# update pip 
$HOME/.pyenv/versions/3.9.4/envs/py39/bin/python3.9 -m pip install --upgrade pip
```
