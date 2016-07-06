FROM base.hadoop.cluster

MAINTAINER Martin Guo <martin.guo@irdeto.com>


#
RUN apt-get install -y python

# move all configuration files into container
ADD spark_files/* /usr/local/


# move all confugration files into container
ADD files/* /tmp/

ENV HADOOP_INSTALL /usr/local/hadoop

RUN mv /tmp/hdfs-site.xml $HADOOP_INSTALL/etc/hadoop/hdfs-site.xml && \ 
mv /tmp/core-site.xml $HADOOP_INSTALL/etc/hadoop/core-site.xml && \
mv /tmp/mapred-site.xml $HADOOP_INSTALL/etc/hadoop/mapred-site.xml && \
mv /tmp/yarn-site.xml $HADOOP_INSTALL/etc/hadoop/yarn-site.xml && \
mv /tmp/slaves $HADOOP_INSTALL/etc/hadoop/slaves && \
mv /tmp/start-hadoop.sh ~/start-hadoop.sh && \
mv /tmp/slaves.sh $HADOOP_INSTALL/sbin/slaves.sh && \
mv /tmp/run-wordcount.sh ~/run-wordcount.sh && \ 
mv /tmp/start-ssh-serf.sh ~/start-ssh-serf.sh 

# Change spark folder name
RUN cd /usr/local/ && \
mv spark-1.6.1-bin-without-hadoop/ spark && \
mv spark-env.sh   /usr/local/spark/conf/spark-env.sh

ENV SPARK_HOME /usr/local/spark
ENV PATH $SPARK_HOME/bin:$PATH


# Config Hive
RUN mkdir /usr/local/hive && \
mv /tmp/apache-hive-*/ /usr/local/hive

ENV HIVE_HOME /usr/local/hive/apache-hive-1.2.1-bin
ENV PATH $HIVE_HOME/bin:$PATH

RUN chmod +x ~/start-hadoop.sh && \
chmod +x ~/run-wordcount.sh && \
chmod +x ~/start-ssh-serf.sh && \
chmod 1777 tmp



# format namenode
#RUN /usr/local/hadoop/bin/hdfs namenode -format




EXPOSE 22022 
EXPOSE 7373
EXPOSE 7946 
EXPOSE 9000
EXPOSE 50010
EXPOSE 50020
EXPOSE 50070
EXPOSE 50075
EXPOSE 50090
EXPOSE 50475
EXPOSE 8030
EXPOSE 8031
EXPOSE 8032
EXPOSE 8033
EXPOSE 8040
EXPOSE 8042
EXPOSE 8060
EXPOSE 8088
EXPOSE 50060
EXPOSE 10000

#Spark port
EXPOSE 7077
EXPOSE 8080 

CMD '/root/start-ssh-serf.sh'; 'bash'
