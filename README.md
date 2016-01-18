# README

This repository has everything you need to build your BOSH release except for the necessary packages. Download the required [Hadoop](http://apache.arvixe.com/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz) and [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html) (Pick jdk-7u79-linux-x64.tar.gz) and place them into `src/hdfs/` and `src/jdk7` respectively.

From the root directory of this repo, run: 

1. `bosh create release` -- This will prompt you to enter a development release name. Enter the name `hadoop`
2. `bosh upload release`
3. `bosh deploy`