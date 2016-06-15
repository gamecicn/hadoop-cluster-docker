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
	docker rm slave1
	docker run -d \
	-t \
    -v /hdfs1/namenode:/root/hdfs/namenode \
    -v /hdfs1/datanode:/root/hdfs/datanode \
    --dns 127.0.0.1 \
    -P \
    --name slave1 \
    -h slave1.migu.irdeto.com \
    -e JOIN_IP=172.17.0.249 \
    slave.hadoop.cluster

run2:
	docker rm slave2
	docker run -d \
	-t \
    -v /hdfs2/namenode:/root/hdfs/namenode \
    -v /hdfs2/datanode:/root/hdfs/datanode \
    --dns 127.0.0.1 \
    -P \
    --name slave2 \
    -h slave2.migu.irdeto.com \
    -e JOIN_IP=172.17.0.249 \
    slave.hadoop.cluster
    
    
      
    
#	-p 7373:7373 \
#	-p 7946:7946   \
#	-p 9000:9000   \
#	-p 50010:50010   \
#	-p 50020:50020   \
#	-p 50070:50070   \
#	-p 50075:50075   \
#	-p 50090:50090   \
#	-p 50475:50475   \
#	-p 8030:8030   \
#	-p 8031:8031   \
#	-p 8032:8032   \
#	-p 8033:8033   \
#	-p 8040:8040   \
#	-p 8042:8042   \
#	-p 8060:8060   \
#	-p 8088:8088   \
#	-p 50060:50060   \





