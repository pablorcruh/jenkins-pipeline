#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod_user@167.172.125.154:/tmp/.auth

scp -i /opt/prod jenkins/deploy/publish.sh prod_user@167.172.125.154:/tmp/publish.sh

ssh -i /opt/prod prod_user@167.172.125.154 "/tmp/publish.sh"
