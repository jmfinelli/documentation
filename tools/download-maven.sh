#!/bin/sh -e
MAVEN_VERSION=3.9.9
MAVEN_URL=https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.zip

if [ -d tools ]; then
  #executed from root of WF install
  cd tools
fi

if [ -d maven ]; then
  echo "Maven already exists"
  if version=`./maven/bin/mvn -version | grep "Apache Maven $MAVEN_VERSION"`; then
    echo "Maven is correct version"
    exit
  fi
fi

rm -rf maven
curl $MAVEN_URL >maven.zip
unzip maven.zip
rm maven.zip
mv apache-maven* maven
