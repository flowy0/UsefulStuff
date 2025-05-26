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

## Docker
```

sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings

sudo apt install gpg

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


```

Docker Post Install
```
sudo /usr/sbin/usermod -aG docker $USER
newgrp docker
docker run hello-world

#setup auto start
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

```


