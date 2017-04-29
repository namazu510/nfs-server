#!/bin/bash
set -e

for mnt in "${mounts[@]}"; do
    src=$(echo $mnt | awk -F':' '{ print $1 }')
    mkdir -p $src
    echo "$src *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports
done

exportfs -ar
exec /usr/lib/systemd/systemd --system --unit=nfs-server.service
