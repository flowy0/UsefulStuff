#install homebrew, this installs xcode dev tools as well
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#brew add to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# brew upgrade 
brew tap buo/cask-upgrade
# run brew cu -a to update all 

# terminal app
brew install iterm2

# utilities 
brew install brave firefox
brew install chromium --no-quarantine
brew install --cask google-drive
brew install --cask macs-fan-control
brew install --cask alfred
brew install dropbox

# chat
brew install --cask whatsapp
brew install --cask telegram

# code 
brew install --cask visual-studio-code

# from https://towardsdatascience.com/how-to-easily-set-up-python-on-any-m1-mac-5ea885b73fab
# python
brew install miniforge
conda init zsh




