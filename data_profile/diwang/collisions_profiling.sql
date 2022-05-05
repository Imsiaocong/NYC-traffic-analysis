-- Query total rows diagosis
SELECT COUNT(*) FROM collision;

-- Quality check - how many rows contain empty values
SELECT COUNT(*) FROM collision WHERE LENGTH(borough)=0 OR LENGTH(zipcode)=0 OR LENGTH(latitude)=0 OR LENGTH(longitude)=0 OR LENGTH(location)=0 OR LENGTH(onstreet)=0 OR LENGTH(crossstreet)=0 OR LENGTH(offstreet)=0 OR LENGTH(personinjured)=0 OR LENGTH(personkilled)=0 OR LENGTH(pedestrianinjured)=0 OR LENGTH(pedestriankilled)=0 OR LENGTH(cyclistinjured)=0 OR LENGTH(cyclistkilled)=0 OR LENGTH(motoristinjured)=0 OR LENGTH(motoristkilled)=0 OR LENGTH(factor1)=0 OR LENGTH(collisionid)=0 OR LENGTH(code1)=0;

-- Checking duplicate incidents
SELECT COUNT(*), collisionid FROM collision GROUP BY collisionid HAVING COUNT(*)>1;

-- Checking empty values, lots of rows wil be affected
SELECT COUNT(*) FROM collision WHERE LENGTH(borough)=0;
SELECT COUNT(*) FROM collision WHERE latitude is NULL;
SELECT COUNT(*) FROM collision WHERE longitude is NULL;
SELECT COUNT(*) FROM collision WHERE LENGTH(location)=0;
SELECT COUNT(*) FROM collision WHERE LENGTH(onstreet)=0;
SELECT COUNT(*) FROM collision WHERE LENGTH(factor1)=0;
SELECT COUNT(*) FROM collision WHERE LENGTH(code1)=0;