hdfs dfs -rmr -skipTrash output/nyt/cn*
#hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-streaming.jar -input /home/root/input -output output -mapper mapper.py -reducer reducer.py
hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-streaming.jar -file wdCnt/mapper.py -file wdCnt/reducer.py -mapper "python mapper.py" -reducer "python reducer.py" -input input/nyt -output output/nyt/cnt
