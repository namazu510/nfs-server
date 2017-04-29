#!/bin/bash
set -e

#echo "#NFS Exports" > /etc/exports
#for mnt in "${mounts[@]}"; do
#    src=$(echo $mnt | awk -F':' '{ print $1 }')
#    mkdir -p $src
#    echo "$src *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports
#done

mkdir -p /share
echo "/share *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports
exec /usr/lib/systemd/systemd --system --unit=nfs-server.service
