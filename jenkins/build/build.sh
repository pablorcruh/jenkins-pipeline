#!/bin/bash

# copy jar to the new location
cp -f java-app/target/*.jar jenkins/build/


echo "**********************************************************"
echo "**************   BUILDING DOCKER IMAGE   *****************"
echo "**********************************************************"


cd jenkins/build/ && docker-compose -f docker-compose-build.yaml build no-cache 