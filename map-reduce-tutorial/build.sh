
# Needs Hadoop 2.3.0-cdh5.1.0

mkdir -p classes
#javac \
#    -cp $HADOOP_HOME/client-0.20/hadoop-hdfs-2.3.0-cdh5.1.0.jar \
#    -cp $HADOOP_HOME/client-0.20/hadoop-core-2.3.0-mr1-cdh5.1.0.jar \
#    -cp $HADOOP_HOME/hadoop-common-2.3.0-cdh5.1.0.jar \
#    -d classes WordCounter.java

javac \
    -classpath `hadoop classpath` \
    -d classes WordCounter.java

jar -cvf wordcounter.jar -C classes/ .
