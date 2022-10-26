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