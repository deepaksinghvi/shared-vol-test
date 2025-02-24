# shared-vol-test
This is to validate how the init and main container can share the same shared volume by using the similar kind of permission and ownership of the common folders.

### Build docker images for both init container and main container

```
docker build -f Dockerfile.initcontainer -t deepaksinghvi/alpine-init-container:latest .

docker build -f Dockerfile.maincontainer -t deepaksinghvi/alpine-main-container:latest .
```

To create the deployment
```
kubectl apply -f ./shared-vol-test/init-container-3.yaml
```
To delete the deployment
```
kubectl delete -f ./shared-vol-test/init-container-3.yaml
```

When a shared volume is mounted into a container, it overrides the existing contents of the mount path from the Docker image. That’s why:
 • Files created by a script during runtime (after the volume is mounted) are visible.
 • Files that are part of the Docker image at the mount path are hidden because the volume mount masks them.