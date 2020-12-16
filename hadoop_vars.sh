#!/bin/bash
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
export HADOOP_HOME=$HOME/hadoop
export SPARK_HOME=$HOME/spark-3.0.1-bin-hadoop3.2
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='lab'

export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$SPARK_HOME/bin
