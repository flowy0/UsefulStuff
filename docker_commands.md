Docker Quick Reference:

To build images:
```
docker build -f folder/Dockerfile -t your_image_name .
```

With architecture specified, when building on M1 mac
```
docker build -f folder/Dockerfile -t your_image_name . --platform linux/amd64
```


Create Docker network
```
docker network create your_network_name 
```

Clean up docker network
```
docker network prune
```


Configure docker to push to GCR
```
gcloud auth configure-docker
```
