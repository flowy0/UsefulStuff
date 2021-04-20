Steps to setup zsh with oh-my-zsh

Steps:

1. Install Homebrew
2. Install iterm2
3. Install oh-my-zsh
4. Install some mono fonts
5. install some useful plugins
6. Setup Theme


Step 1: Homebrew install 
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Step 2:
``` shell
brew cask install iterm
```

Step 3:
install oh-my-zsh
```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Step 4:
You can set the themes in the iTerm2 profiles.

Some monospace fonts:
https://www.nerdfonts.com/font-downloads

```
brew tap homebrew/cask-fonts
brew install --cask font-Overpass-nerd-font
brew install --cask font-Mononoki-nerd-font

```


Step 5:
```
brew install zsh-syntax-highlighting
```

Update ~/.zshrc plugin sections with your new plugins:
```
plugins=(git
zsh-autosuggestions
)
```

Step6:
Edit ~/.zshrc to pick a theme, my current theme is named cloud.
```
#themes
ZSH_THEME="cloud"
```


Optional:
Themes for iTerm2
https://iterm2colorschemes.com/
