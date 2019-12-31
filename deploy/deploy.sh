#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/pipeline/deploy/deploy-key /tmp/.auth prod_user@167.172.125.154:/tmp/.auth

scp -i /home/pipeline/deploy/deploy-key deploy/publish.sh prod_user@167.172.125.154:/tmp/publish

ssh -i /home/pipeline/deploy/deploy-key prod_user@167.172.125.154 "/tmp/publish"
