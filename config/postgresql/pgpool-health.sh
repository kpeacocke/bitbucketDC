#!/bin/bash
PGPASSWORD=bitbucketpass psql -h localhost -U bn_bitbucket -d bitbucket -c "SHOW pool_nodes;" > /dev/null 2>&1