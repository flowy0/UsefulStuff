# download my gitignore file
curl "https://raw.githubusercontent.com/flowy0/dotfiles/main/.gitignore_global" --output $HOME/.gitignore_global
# set in git config
git config --global core.excludesfile ~/.gitignore_global
