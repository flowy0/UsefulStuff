# Setup ZSH Theme 


[Common theme](https://github.com/jackharrisonsherlock/common)


I modified the prompt to show the curren pyenv using a zsh plugin


in common.zsh-theme, add `[$(pyenv_prompt_info)]` before `common_return_status`
```
# Left Prompt
 PROMPT='$(common_host)$(common_current_dir)$(common_bg_jobs)[$(pyenv_prompt_info)] $(common_return_status)'
``` 
 
See the result below.
