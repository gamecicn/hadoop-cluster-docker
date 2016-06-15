#!/bin/bash

cd ./hadoop-master 
make run

cd ../hadoop-slave
make run1
make run2


# create a new Bash session in the master container
docker exec -it master bash
