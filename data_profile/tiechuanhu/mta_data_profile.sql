Identify and count missing value for each column :

select count(*) from mta where lirr is NULL;

select count(*) from mta where lirr_percent is NULL;

select count(*) from mta where time is NULL;

select count(*) from mta where subway is NULL;

select count(*) from mta where subway_percent is NULL;

select count(*) from mta where ride is NULL;

select count(*) from mta where ride_percent is NULL;

select count(*) from mta where metro_north  is NULL;

select count(*) from mta where metro_percent  is NULL;

select count(*) from mta where access is NULL;

select count(*) from mta where access_percent is NULL;

select count(*) from mta where traffic is NULL;

select count(*) from mta where traffic_percent is NULL;


Analyze numeric Data Types for each field:

select min(time) from mta;

select max(time) from mta;

select avg(time) from mta;

select variance(time) from mta;

select stddev_pop(time) from mta;

select min(subway) from mta;

select max(subway) from mta;

select avg(subway) from mta;

select variance(subway) from mta;

select stddev_pop(subway) from mta;

select min(subway_percent) from mta;

select max(subway_percent) from mta;

select avg(subway_percent) from mta;

select variance(subway_percent) from mta;

select stddev_pop(subway_percent) from mta;

select min(ride) from mta;

select max(ride) from mta;

select avg(ride) from mta;

select variance(ride) from mta;

select stddev_pop(ride) from mta;

select min(ride_percent) from mta;

select max(ride_percent) from mta;

select avg(ride_percent) from mta;

select variance(ride_percent) from mta;

select stddev_pop(ride_percent) from mta;

select min(lirr) from mta;

select max(lirr) from mta;

select avg(lirr) from mta;

select variance(lirr) from mta;

select stddev_pop(lirr) from mta;

select min(lirr_percent) from mta;

select max(lirr_percent) from mta;

select avg(lirr_percent) from mta;

select variance(lirr_percent) from mta;

select stddev_pop(lirr_percent) from mta;

select min(metro_north) from mta;

select max(metro_north) from mta;

select avg(metro_north) from mta;

select variance(metro_north) from mta;

select stddev_pop(metro_north) from mta;

select min(metro_percent) from mta;

select max(metro_percent) from mta;

select avg(metro_percent) from mta;

select variance(metro_percent) from mta;

select stddev_pop(metro_percent) from mta;

select min(access) from mta;

select max(access) from mta;

select avg(access) from mta;

select variance(access) from mta;

select stddev_pop(access) from mta;

select min(access_percent) from mta;

select max(access_percent) from mta;

select avg(access_percent) from mta;

select variance(access_percent) from mta;

select stddev_pop(access_percent) from mta;

select min(traffic) from mta;

select max(traffic) from mta;

select avg(traffic) from mta;

select variance(traffic) from mta;

select stddev_pop(traffic) from mta;

select min(traffic_percent) from mta;
