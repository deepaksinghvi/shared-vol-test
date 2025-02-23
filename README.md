# shared-vol-test
This is to validate how the init and main container can share the same shared volume by using the similar kind of permission and ownership of the common folders.

### Build docker images for both init container and main container

```
docker build -f Dockerfile.initcontainer -t deepaksinghvi/alpine-init-container:latest .
```



```
docker build -f Dockerfile.maincontainer -t deepaksinghvi/alpine-main-container:latest .
```