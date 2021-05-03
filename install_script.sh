#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
brew install dashlane chromium
brew install --cask macs-fan-control
brew install --cask alfred

# chat
brew install --cask whatsapp
brew install --cask telegram

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-Overpass-nerd-font
brew install --cask font-Mononoki-nerd-font
brew install font-cascadia-code font-cascadia-mono font-caskaydia-cove-nerd-font
brew install --cask font-victor-mono


# python
brew install miniconda
# ide
brew install --cask visual-studio-code


# docker 
# brew install --cask docker
# docker edge
brew install --cask homebrew/cask-versions/docker-edge

# k8s and oc 
brew install openshift-cli
brew install kubectl
brew install helm

# database, s3 access
brew install --cask dbeaver-community cyberduck
brew install postgresql
brew install --cask microsoft-azure-storage-explorer

#versioning
brew install dvc


