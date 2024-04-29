# Using JQ


Simple Usage of `jq` to get the size of a Docker Image
```
echo "Image Size: $(docker images imagename --format "{{json . }}" | jq .Size)"
```
