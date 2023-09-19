# Setup ZSH Theme 

## Spaceship Theme 


Using the [spaceship theme](https://github.com/spaceship-prompt/spaceship-prompt) : 

This shows the conda environment, current dir and kubectl context on the left, and the git branch on the right
<img src="spaceship-theme.png" alt="screenshot" width="750">


my settings in .zshrc 
```
SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  conda
  dir
  # git
  kubectl
  docker
  # venv
  # pyenv
  node
  ruby
  xcode
  swift
  golang


)
SPACESHIP_RPROMPT_ORDER=(
  git
)


SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=true
```

## Common Theme

I am using the [Common theme](https://github.com/jackharrisonsherlock/common)

Install the theme based on the github repo link above.


In $HOME/.zshrc, set your theme like this:
```
ZSH_THEME="common"
```

#### using conda environments

If you are using conda/miniconda, there are no modifications required for the common.zsh-theme.
It should show like this:

<img src="common_theme_conda_env.png" alt="screenshot" width="650">





#### using pyenv 

I modified the prompt to show the curren pyenv using a zsh plugin

in .zshrc add the plugin pyenv, similar to below

```
plugins=(git
zsh-autosuggestions
pyenv
)
```

in common.zsh-theme, add `[$(pyenv_prompt_info)]` before `common_return_status`
```
# Left Prompt
 PROMPT='$(common_host)$(common_current_dir)$(common_bg_jobs)[$(pyenv_prompt_info)] $(common_return_status)'
``` 
 
See the result below.

In this case, the folder name is webscrape and the pyenv name is py39

<img src="common_theme_screenshot.png" alt="screenshot" width="650">


### Configuring kube-ps-1

https://github.com/jonmosco/kube-ps1

My settings in .zshrc
```
# for kube context
source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

KUBE_PS1_NS_ENABLE=""
KUBE_PS1_CTX_COLOR="green"
KUBE_PS1_SYMBOL_USE_IMG=""
KUBE_PS1_SYMBOL_DEFAULT=""
KUBE_PS1_SEPARATOR=""
```
<img width="954" alt="Screenshot 2022-06-14 at 6 08 19 PM" src="https://user-images.githubusercontent.com/9532712/173552634-748f37bb-adce-4717-a3a2-d9aec4173e29.png">
