#Debian Setup

## SSH Setup


1. Install/Setup sudo (as root)
```
apt install sudo
```
2. Edit Config File to contain the following
```/etc/sudoers
%sudo ALL=(ALL:ALL)   ALL

```

To disable password entry to sudo access, use this instead.
```
%sudo ALL=(ALL:ALL)     NOPASSWD:ALL
```

2. Add user to group
4. `usermod <username> sudo`

## Config Files
### .bashrc Config

```.bashrc
# as rio terminal is not supported
export TERM=xterm-256color
```


### vim-tiny config
```.vimrc
set number
set mouse+=a
set bg=dark
set nocompatible
set clipboard=unnamed
```
