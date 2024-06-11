# Docker Quick Reference:

## Building Images

To build images:
```
docker build -f folder/Dockerfile -t your_image_name .
```

With architecture specified, when building on M1 mac
```
docker build -f folder/Dockerfile -t your_image_name . --platform linux/amd64
```

## Docker Networking

Create Docker network
```
docker network create your_network_name 
```

Clean up docker network
```
docker network prune
```

## Docker login

Configure docker to push to GCR
```
gcloud auth configure-docker
```

Login to Docker Hub
```
docker login -u <user-name>
```

Login to private registry
```
docker login ghcr.io -u <USERNAME> --password-stdin
```

## Docker Run

Run a new image with a command `bash`
```
docker run -it <your-image> bash
```





