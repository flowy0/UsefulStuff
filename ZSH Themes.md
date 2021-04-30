# Setup ZSH Theme 


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




