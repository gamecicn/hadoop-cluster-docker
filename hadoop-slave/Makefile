# Martin Guo
# martin.guo@irdeto.com
# 2016-06-14

Phony: build

build: 
	docker build \
    -t slave.hadoop.cluster  .
    
build_without_cache: 
	docker build -no-cache -t slave.hadoop.cluster  .
    
run1:
	docker run -d \
	-t \
    -v /hdfs1/namenode:/root/hdfs/namenode \
    -v /hdfs1/datanode:/root/hdfs/datanode \
    --net=host \
    -P \
    -h slave1.migu.irdeto.com \
    -e JOIN_IP=172.19.203.156 \
    -e MASTER_NAMENODE_IP=172.19.203.156 \
    slave.hadoop.cluster



