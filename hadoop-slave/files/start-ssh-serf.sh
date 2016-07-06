#!/bin/bash

# start sshd
echo "start sshd..."
service ssh start

# start sef
echo -e "\nstart serf..." 
/etc/serf/start-serf-agent.sh > serf_log &

sleep 5

serf members

# Add master namenode to /etc/hosts
echo "$MASTER_NAMENODE_IP master.migu.irdeto.com">> /etc/hosts

# restart sshd for new port start 
/etc/init.d/ssh restart