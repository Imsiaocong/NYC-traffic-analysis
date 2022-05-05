-- Numbers of collisions after year 2020:
SELECT COUNT(*) FROM collision WHERE crashDate LIKE '%20' OR crashDate LIKE '%21' OR crashDate LIKE '%22';

-- Numbers of collision before year 2020:
SELECT COUNT(*) FROM collision WHERE crashDate < '2020-01-01';

-- Number of collisions in each Borough
SELECT borough, COUNT(borough) as number_incidents FROM collision GROUP BY borough;

-- Number of collisions in each year
SELECT SUBSTRING(crashDate,7,10) as yyyy, COUNT(SUBSTRING(crashDate,7,10)) as times FROM collision GROUP BY SUBSTRING(crashDate,7,10) ORDER BY yyyy;

-- Factors of collision
SELECT factor1 as factor, COUNT(factor1) as occurances FROM collision GROUP BY factor1 ORDER BY occurances DESC;

-- Number of collision each day after 2020-01-01
SELECT crashDate, COUNT(*) AS nums FROM collision WHERE crashDate LIKE '%20' OR crashDate LIKE '%21' OR crashDate LIKE '%22'  GROUP BY crashDate ORDER BY SUBSTRING(crashdate,7,10) ASC;

-- Query collision on time periods
select count(*) from collision where unix_timestamp('00:00','HH:mm')<=unix_timestamp(crashtime,'HH:mm') and unix_timestamp('08:00','HH:mm')>=unix_timestamp(crashtime,'HH:mm');

-- Percentage killed
SELECT (SUM(personkilled + pedestriankilled + cyclistkilled + motoristkilled) / COUNT(*)) AS percentage_killed FROM collision;

-- Percentage injured
SELECT (SUM(personinjured + pedestrianinjured + cyclistinjured + motoristinjured) / COUNT(*)) AS percentage_injured FROM collision;

-- Cause of injuries
SELECT factor1, COUNT(personinjured) as number_cause FROM collision GROUP BY factor1 ORDER BY number_cause DESC;
SELECT factor1, SUM(personinjured) as number_cause FROM collision GROUP BY factor1 ORDER BY number_cause DESC;

-- Numbers of person, pedestrian, cyclist, motorist killed
SELECT SUM(personkilled) as person_killed, SUM(pedestriankilled) as ped_killed, SUM(cyclistkilled) as cyclist_killed, SUM(motoristkilled) as motorist_killed FROM collision;

-- Number of incidents in each month
SELECT SUBSTRING(crashdate,1,2) as d, COUNT(*) as num FROM collision GROUP BY SUBSTRING(crashdate,1,2) ORDER BY d;

-- Number of incidents grouped by hour
SELECT SUBSTRING(crashtime,1,2) as t, COUNT(*) FROM collision GROUP BY SUBSTRING(crashtime,1,2) ORDER BY t;

-- Top 20 streets with most incidents
SELECT COUNT(onstreet) as o, onstreet FROM collision GROUP BY onstreet ORDER BY o DESC LIMIT 20;

-- Top 20 reasons why people were killed
SELECT COUNT(personkilled) as k, factor1 FROM collision GROUP BY factor1 ORDER BY k DESC LIMIT 20;
SELECT COUNT(pedestriankilled) as k, factor1 FROM collision GROUP BY factor1 ORDER BY k DESC LIMIT 20;
SELECT COUNT(cyclistkilled) as k, factor1 FROM collision GROUP BY factor1 ORDER BY k DESC LIMIT 20;
SELECT COUNT(motoristkilled) as k, factor1 FROM collision GROUP BY factor1 ORDER BY k DESC LIMIT 20;

-- Details of incidents in Horace Harding Expressway
SELECT COUNT(*) as c, SUBSTRING(crashtime,1,2) as t, onstreet, factor1 FROM collision WHERE onstreet = 'HORACE HARDING EXPRESSWAY' GROUP BY SUBSTRING(crashtime,1,2),onstreet,factor1 ORDER BY c;

-- Relation between MTA daily ridership and collision incidents in NYC
SELECT crashdate, subway, COUNT(crashdate) as num_crash FROM collision INNER JOIN mta ON crashdate = date_mta GROUP BY crashdate,subway ORDER BY crashdate DESC LIMIT 20;