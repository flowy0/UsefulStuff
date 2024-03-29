# Switching from miniforge to miniconda

As miniconda is now available for M1/Apple Silicon, i replace miniforge with miniconda.


Remove `miniforge`
```bash
brew uninstall miniforge
```

Remove the following section from .zshrc 
```bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```




Install `miniconda`
```bash
brew install --cask miniconda
```

```bash
conda init "$(basename "${SHELL}")"
```

Setup your conda environments as usual.

```bash
conda create -n your-env python=3.10
```

Pin the version in brew, this prevents your conda environments being wiped out if conda is upgraded via brew
```
brew cu pin miniconda
```
