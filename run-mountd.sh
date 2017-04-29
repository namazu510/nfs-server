#!/bin/bash
echo "$1 *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports
exportfs -ar
exec /usr/lib/systemd/systemd --system --unit=nfs-server.service
