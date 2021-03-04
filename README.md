# Nginx Container base image
This project contains the Hipex Nginx container base image. This image follows the configuration used at the Hipex platform.

New release are published to [ghcr.io/hipexbv/container-base-nginx](https://github.com/orgs/HipexBV/packages/container/package/container-base-nginx)


## Usage
The suggested way to use the images is by building your image on top. For example

```Dockerfile
FROM ghcr.io/hipexbv/container-base-nginx:v1.0.0

# Copy app code
COPY / /app
```


### Env replace
On start environment variables inside files with the `.hipextemplate` extension are replaced and moved without the extension.
Replacement is done using [envsubst](https://man7.org/linux/man-pages/man1/envsubst.1.html) command.
