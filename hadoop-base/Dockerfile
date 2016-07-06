FROM serf.hadoop.cluster

MAINTAINER Martin Guo <martin.guo@irdeto.com>

# install openssh-server, vim and openjdk
RUN apt-get update 
RUN apt-get install -y git 
RUN apt-get install -y wget
RUN apt-get install -y python
RUN apt-get install -y openssh-server vim
RUN apt-get install -y openjdk-7-jdk 
RUN apt-get install -y ssh



# create need folder
RUN mkdir -p /usr/local

# move all configuration files into container
ADD files/* /usr/local/  


# set jave environment variable 
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64 
ENV PATH $PATH:$JAVA_HOME/bin

#configure ssh free key access
#change sshd port from 22 to 22022 avoid conflict with host
RUN mkdir /var/run/sshd && \
ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
mv /usr/local/ssh_config ~/.ssh/config && \
mv /usr/local/sshd_config /etc/ssh/sshd_config && \
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

#install hadoop 2.7.2
#RUN cd /usr/local/ && \
#tar -zxf hadoop-2.7.2.tar.gz && \

RUN mv /usr/local/hadoop-2.7.2  /usr/local/hadoop && \
mv /usr/local/bashrc ~/.bashrc  && \
mv /usr/local/hadoop-env.sh /usr/local/hadoop/etc/hadoop/hadoop-env.sh 

# Config ssh
RUN mv files/authorized_keys   /root/.ssh/authorized_keys











