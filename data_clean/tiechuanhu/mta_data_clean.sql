-- Drop the empty field and its corresponding row;

insert overwrite into mta select * from mta where lirr is not NULL;

insert overwrite into  mta select * from mta where subway is not NULL;

insert overwrite into mta select * from mta where subway_percent is not NULL;

insert overwrite into  mta select * from mta where ride is not NULL;

insert overwrite into mta select * from mta where ride_percent is not NULL;

insert overwrite into  mta select * from mta where lirr_percent is not NULL;

insert overwrite into mta select * from mta where metro_north is not NULL;

insert overwrite into  mta select * from mta where metro_percent is not NULL;

insert overwrite into mta select * from mta where access is not NULL;

insert overwrite into  mta select * from mta where access_percent is not NULL;

insert overwrite into mta select * from mta where traffic is not NULL;

insert overwrite into  mta select * from mta where traffic_percent is not NULL;
