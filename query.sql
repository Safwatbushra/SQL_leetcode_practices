create table insurance ( 
pid serial primary key, 
tiv_2015 float, 
tiv_2016 float,
lat float, 
lon float);

insert into insurance ( tiv_2015, tiv_2016, lat , lon)
values ('10','5','10','10'),('20','20','20','20'),('10','30','20','20'),
('10','40','40','40');

select *
from insurance;

SELECT ROUND(SUM(DISTINCT i1.tiv_2016), 2) AS tiv_2016
FROM Insurance i1
JOIN Insurance i2 ON i1.tiv_2015 = i2.tiv_2015
WHERE (i1.lat, i1.lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);

select * 
from insurance ;

select * into bye 
from insurance  where 1=2;
select * 
from bye;

create table hello1 
as 
select * 
from hello where 1=2 ;

insert into bye
(select * from hello) ;

insert into bye ( lon, lat )
select lon, lat 
from insurance 
