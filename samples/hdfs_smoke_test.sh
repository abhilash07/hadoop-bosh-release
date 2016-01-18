#!/bin/sh

_main() {
	HDFS_BIN_DIR="$1"
	HDFS_NAMENODE_IP="$2"
	HDFS_NAMENODE_PORT="$3"

	"${HDFS_BIN_DIR}/hdfs" dfs -fs "hdfs://${HDFS_NAMENODE_IP}:${HDFS_NAMENODE_PORT}" -ls /
	"${HDFS_BIN_DIR}/hdfs" dfs -fs "hdfs://${HDFS_NAMENODE_IP}:${HDFS_NAMENODE_PORT}" -mkdir /toronto
	"${HDFS_BIN_DIR}/hdfs" dfs -fs "hdfs://${HDFS_NAMENODE_IP}:${HDFS_NAMENODE_PORT}" -ls /
	"${HDFS_BIN_DIR}/hdfs" dfs -fs "hdfs://${HDFS_NAMENODE_IP}:${HDFS_NAMENODE_PORT}" -rm -f -r /*
}

_main "$@"
