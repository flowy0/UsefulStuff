
## Remove Docker Desktop for Mac

Remove Docker Desktop
```
brew uninstall --cask docker
```


## Rancher Desktop 
Install Rancher Desktop
```
brew install --cask rancher
```

Install Docker cli and credential helper
```
brew install docker
brew install docker-credential-helper
```



Setup engine as dockerd
![image](https://github.com/flowy0/UsefulStuff/assets/9532712/6d623874-9aab-4edf-ba42-e010858995df)

`docker context use rancher-desktop`

Hit into a bug 

Hit an issue when running a spark image
`docker run -it flowy0/pyspark:3.3-nlp-test-v1  bash`

```
Non-spark-on-k8s command provided, proceeding in pass-through mode...
+ CMD=("$@")
+ exec /usr/bin/tini -s -- bash
[FATAL tini (1)] PR_SET_CHILD_SUBREAPER is unavailable on this platform. Are you using Linux >= 3.4?
```

## Try Colima


```
brew install colima
```

```
colima start
```

Check that docker engine is running
`docker version`

```
Client: Docker Engine - Community
 Version:           23.0.6
 API version:       1.41 (downgraded from 1.42)
 Go version:        go1.20.4
 Git commit:        ef23cbc431
 Built:             Thu May  4 10:51:27 2023
 OS/Arch:           darwin/arm64
 Context:           colima

Server:
 Engine:
  Version:          20.10.20
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.18.7
  Git commit:       03df974ae9e6c219862907efdd76ec2e77ec930b
  Built:            Wed Oct 19 02:58:31 2022
  OS/Arch:          linux/arm64
  Experimental:     false
 containerd:
  Version:          v1.6.8
  GitCommit:        9cd3357b7fd7218e4aec3eae239db1f68a5a6ec6
 runc:
  Version:          1.1.4
  GitCommit:        5fd4c4d144137e991c4acebb2146ab1483a97925
 docker-init:
  Version:          0.19.0
  GitCommit:
```




