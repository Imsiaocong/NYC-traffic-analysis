1.  Create an external table "collision" with columns user, post and time.
CREATE EXTERNAL TABLE collision (crashDate STRING, crashTime STRING, borough STRING, zipcode INT, latitude DOUBLE, longitude DOUBLE, location STRING, onStreet STRING, crossStreet STRING, offStreet STRING, personInjured INT, personKilled INT, pedestrianInjured INT, pedestrianKilled INT, cyclistInjured INT, cyclistKilled INT, motoristInjured INT, motoristKilled INT, factor1 STRING, factor2 STRING, factor3 STRING, factor4 STRING, factor5 STRING, collisionId INT, code1 STRING, code2 STRING, code3 STRING, code4 STRING, code5 STRING) COMMENT 'collisions' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE LOCATION '/user/dw2395/final/collision';

CREATE EXTERNAL TABLE mta (date_mta STRING, subway INTEGER, subway_percent DOUBLE, ride INTEGER, ride_percent DOUBLE, lirr INTEGER, lirr_percent DOUBLE, metro_north INTEGER, metro_north_percent DOUBLE, access INTEGER, access_percent FLOAT, bt INTEGER, bt_percent DOUBLE) COMMENT 'mta' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE LOCATION '/user/dw2395/final/mta';

2. Copy input data manually to HDFS location '/user/<net_id>/messages2' as given below.
hadoop fs -copyFromLocal /home/dw2395/Motor_Vehicle_Collisions_-_Crashes.csv /user/dw2395/final/collision
hadoop fs -copyFromLocal /home/dw2395/MTA_Daily_Ridership_Data__Beginning_2020.csv /user/dw2395/final/mta

3. Query the table 'collision/mta' on hive.