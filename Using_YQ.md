# Some quick examples of using `yq`

An example kubernetes secret manifest called `secrets.yaml`

This manifest creates a secret with a generated name, using the prefix `your-secret-name`

```yaml
apiVersion: v1
kind: Secret
metadata:
  generateName: your-secret-name-
type: Opaque
stringData:
  AWS_ACCESS_KEY_ID: abc
  AWS_SECRET_ACCESS_KEY: def
```

## Retrieve a single key
We can retrieve the key `AWS_ACCESS_KEY_ID` by running `yq  ".stringData.AWS_ACCESS_KEY_ID" secrets.yaml`

You should see this as output: `abc`


## Replace keys with environment variables
We can replace the values for this manifest with `yq` with some environment variables

```bash
yq '
.stringData.AWS_ACCESS_KEY_ID = strenv(AWS_ACCESS_KEY_ID) |
.stringData.AWS_SECRET_ACCESS_KEY = strenv(AWS_SECRET_ACCESS_KEY)
' secrets.yaml 
```
An example output might look like this 

```yaml
apiVersion: v1
kind: Secret
metadata:
  generateName: your-secret-name-
type: Opaque
stringData:
  AWS_ACCESS_KEY_ID: your_username
  AWS_SECRET_ACCESS_KEY: dummy_password
```

You can create this secret in kubernetes by adding a pipe. 
```bash
yq '
.stringData.AWS_ACCESS_KEY_ID = strenv(AWS_ACCESS_KEY_ID) |
.stringData.AWS_SECRET_ACCESS_KEY = strenv(AWS_SECRET_ACCESS_KEY)
' secrets.yaml | kubectl create -f -
```
Output:

```bash
secret/your-secret-name-ghnqx
```

