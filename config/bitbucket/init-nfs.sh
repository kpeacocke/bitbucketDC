#!/bin/sh

echo 'Waiting for NFS share...';
mkdir -p /var/atlassian/application-data/bitbucket/shared;
chown -R bitbucket:bitbucket /var/atlassian/application-data/bitbucket/shared;

until mount -t nfs4 -o vers=4.1,rsize=1048576,wsize=1048576,timeo=600,retrans=2 \
  nfs-server:/ \
  /var/atlassian/application-data/bitbucket/shared; do
  echo 'Retrying mount...';
  sleep 3;
done

echo 'NFS share mounted successfully.';

exec /usr/bin/tini -- /entrypoint.py --log=INFO