#!/bin/bash

set -euo pipefail

hadoop() {
  mkdir -p src/hdfs
  pushd src/hdfs
  curl -L http://apache.arvixe.com/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz -o hadoop-2.6.3.tar.gz
  popd
}

java() {
  mkdir -p src/java
  pushd src/java
  curl -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz -o jdk-7u79-linux-x64.tar.gz
  popd
}

_main() {
  hadoop
  java
}

_main

