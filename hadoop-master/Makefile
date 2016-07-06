# Martin Guo
# martin.guo@irdeto.com
# 2016-06-14

Phony: build

build: 
	docker build \
    -t master.hadoop.cluster  .
    
build_without_cache: 
	docker build -no-cache -t master.hadoop.cluster  .
    
run:
	docker run -d \
	-t \
    -v /hdfs/namenode:/root/hdfs/namenode \
    -v /hdfs/datanode:/root/hdfs/datanode \
    --dns 127.0.0.1\
    -p 22022:22022 \
    -p 7373:7373 \
    -p 7946:7946 \
    -p 8030:8030 \
    -p 8040:8040 \
    -p 8042:8042 \
    -p 8060:8060 \
    -p 8088:8088 \
    -p 9000:9000 \
    -p 50090:50090 \
    -p 50091:50091 \
    -p 50010:50010 \
    -p 50075:50075 \
    -p 50020:50020 \
    -p 50070:50070 \
    -p 7077:7077 \
    -p 8080:8080 \
    -h master.migu.irdeto.com \
    -w /root \
    master.hadoop.cluster
    
    






