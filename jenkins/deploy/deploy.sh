#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_NUMBER >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

