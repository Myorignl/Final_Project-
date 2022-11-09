-- Creates the table
create table Final_EMS (
ID Serial PRIMARY KEY,
Record VARCHAR(50),
Hospital_Code INT,
Pickup_Date Date,
Arrival_Time Time NOT NULL,
APOT Decimal,
Impression VARCHAR(15),
Postal_Code VARCHAR(15),
AgencyNumber INT,
Agency_Unit VARCHAR(50),
Latitude VARCHAR(50),
Longitude VARCHAR(50)
);

-- Queries the entire database table
select * from Final_EMS;

-- Drops the table
drop table Final_EMS;

-- Queries the database between 2017-2021 but only January-March
select * from Final_EMS where extract(month from pickup_date) between 1 and 3
                     and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database between 2017-2021 but only April-June
select * from Final_EMS where extract(month from pickup_date) between 4 and 6
                     and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database between 2017-2021 but only July-September
select * from Final_EMS where extract(month from pickup_date) between 7 and 9
                     and extract(year from pickup_date) between 2017 and 2021;

 -- Queries the database between 2017-2021 but only October-December                    
select * from Final_EMS where extract(month from pickup_date) between 10 and 12
                     and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database between 2017-2021 but only January-March for bethany_data
select id, hospital_code, pickup_date, arrival_time, apot, impression 
from Final_EMS where extract(month from pickup_date) between 1 and 3
             and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database between 2017-2021 but only April-June for bethany_data
select id, hospital_code, pickup_date, arrival_time, apot, impression 
from Final_EMS where extract(month from pickup_date) between 4 and 6
             and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database between 2017-2021 but only July-September for bethany_data
select id, hospital_code, pickup_date, arrival_time, apot, impression 
from Final_EMS where extract(month from pickup_date) between 7 and 9
             and extract(year from pickup_date) between 2017 and 2021;

  -- Queries the database between 2017-2021 but only October-December for bethany_data                   
select id, hospital_code, pickup_date, arrival_time, apot, impression 
from Final_EMS where extract(month from pickup_date) between 10 and 12
             and extract(year from pickup_date) between 2017 and 2021;

-- Queries the database with rounded date/time values
select hospital_code, apot, impression, 
extract(month from pickup_date),
extract(year from pickup_date),
to_char(pickup_date, 'YYYY-MM'),
extract(hour from arrival_time)
from Final_EMS;  

--Queries a random sample of 10,000 rows
select * from Final_EMS ORDER BY random() limit 10000;

--Queries a random sample of 50,000 rows
select * from Final_EMS ORDER BY random() limit 50000;

--Queries all the data for hospital_code 280
select * from Final_EMS where hospital_code=280

--Queries a random sample of data for hospital_code 280
select * from Final_EMS where hospital_code=280
order by random() limit 10000;