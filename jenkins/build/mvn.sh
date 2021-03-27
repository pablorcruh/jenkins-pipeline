#!/bin/bash

echo "**********************************************************"
echo "****************    BUILDING JAR       *******************"
echo "**********************************************************"

WORKSPACE=/home/jenkins_home/workspace/jenkins-pipeline_master

# parametro a pasar ---  mvn -B -DskipTests clean package
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.3-jdk-8 "$@"