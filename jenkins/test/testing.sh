#!/bin/bash

echo "**********************************************************"
echo "****************    TESTING JAR       ********************"
echo "**********************************************************"


# parametro a pasar ---  mvn test
docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.6.3-jdk-8-alpine "$@"