#!/bin/bash

# Remove old docker
docker rm master
docker rm slave1
docker rm slave2


#FIRST_IP=$(sudo docker inspect --format="{{.NetworkSettings.IPAddress}}" master)

# run master
cd ./hadoop-master 
make run

# run slave
cd ../hadoop-slave
make run1
make run2


# create a new Bash session in the master container
docker exec -it master bash
