# README

This repository has everything you need to build your BOSH release except for the necessary packages. Download the required [Hadoop](http://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz) and [Jdk](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) (Pick jdk-8u65-linux-x64.tar.gz) and place them into `src/hadoop/` and `src/jdk7` respectively.

From the root directory of this repo, run: `bosh create release` and `bosh upload release`.

Never stop the `bosh deploys`
