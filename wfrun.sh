#!/usr/bin/env bash


echo "Task1:"
python /Users/danielsef/repos/recomm_pipeline/workflowrunner.py

echo "Task2:"
python /Users/danielsef/repos/recomm_pipeline/workflowrunner.py


# OK 1.) Call Weblog processing script for Training dataset (Pyspark - Spark-submit call) - Result: Training.csv load to HDFS
# OK 2.) Call Weblog Aggregator script for Training dataset (Pyspark - Spark-submit call) - Result: AggrTraining.json load to HDFS
# OK 3.) Unix command: hadoop fs --get ...  Result: download the AggrTraining.json from HDFS to Local File System (where Streamsets is running)


# 4.) Streamsets: Reset the Pipeline(Crean state cache); CAll File => HBASE Loader Pipeline   Result: AggrTraining.json is loaded to HBASE (The Pipeline will be in finished state when all rows will be loaded)
    #You can pass the argument using the following syntax i.e run ls -l /etc/resolv.conf command:
    #subprocess.call(["ls", "-l", "/etc/resolv.conf"])

# 11.) CAll H2O API (???) .... Result: Modeldetails.json upload and meta processing in the database
# ... ???

# OK 21.) Call Weblog processing script for FeatureDB dataset (Pyspark - Spark-submit call) - Result: FeatureDB.csv load to HDFS
# OK 22.) Call Weblog Aggregator script for FeatureDB dataset (Pyspark - Spark-submit call) - Result: AggrFeaturedDb.json load to HDFS
# OK 23.) Unix command: hadoop fs --get ...  Result: download the AggrFeaturedDb.json from HDFS to Local File System (where Streamsets is running)

# 24.) Streamsets: Reset the Pipeline(Crean state cache); CAll File => HBASE Loader Pipeline   Result: AggrFeaturedDb.json is loaded to HBASE (The Pipeline will be in finished state when all rows will be loaded)


