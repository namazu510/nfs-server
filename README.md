# nfs-server

docker nfs server

```bash
# server
docker run -d -privileged=true --name=nfs-server namazu510/nfs-server /exports


# client
mount -t nfs4 SERVER:/ MOUNTPATH
```

