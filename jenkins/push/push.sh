#!/bin/bash

echo "*******************************************************"
echo "*****************Pushing Image*************************"
echo "*******************************************************"

IMAGE="maven-project"
docker login -u pablorcruh -p $PASS

echo "************ Tagging image ***********************"

docker tag $IMAGE:$BUILD_TAG pablorcruh/$IMAGE:$BUILD_TAG

echo "************** Pushing image ***********************"

docker push pablorcruh/$IMAGE:$BUILD_TAG
