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
	docker rm master
	docker run -d \
	-t \
    -v /hdfs/namenode:/root/hdfs/namenode \
    -v /hdfs/datanode:/root/hdfs/datanode \
    --dns 127.0.0.1\
    -P \
    --name master \
    -h master.migu.irdeto.com \
    -w /root \
    master.hadoop.cluster
    






