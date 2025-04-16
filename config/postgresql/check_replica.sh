#!/bin/bash
PGPASSWORD=bitbucketpass psql -U bn_bitbucket -d bitbucket -h localhost -tAc "SELECT pg_is_in_recovery()" | grep -q t