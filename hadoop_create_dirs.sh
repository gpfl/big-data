hdfs dfs -mkdir -p /user/$USER
hdfs dfs -chown $USER:$USER /user/$USER
hdfs dfs -mkdir /tmp
hdfs dfs -chmod 777 /tmp

hdfs dfs -mkdir -p /user/$USER/beer
