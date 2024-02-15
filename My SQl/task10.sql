create table stu(
id int primary key,
name varchar(50),
score int);
desc stu;
insert into stu
values(1,'simisola',60),
(2,'ivan',80),
(3,'metodija',52),
(4,'callum',98),
(5,'leia',84),
(6,'aparecdic',82),
(7,'ursula',69),
(8,'ramazan',78),
(9,'corona',87),
(10,'alise',57),
(11,'galadriel',89),
(12,'merel',99),
(13,'cherice',55),
(14,'nithya',81),
(15,'elsad',71),
(16,'liisi',90),
(17,'johanna',90),
(18,'anfisa',90),
(19,'ryosuke',97),
(20,'sakchai',61),
(21,'elbert',63),
(22,'katelyn',51);
select * from stu;
select id,name,score,
CASE  
when Score >= 94 THEN 'A'
when Score >= 90 THEN 'A-' 
when Score >= 87 THEN 'B+' 
when Score >= 83 THEN 'B' 
when Score >= 80 THEN 'B-' 
when Score >= 77 THEN 'C+' 
when Score >= 73 THEN 'C' 
when Score >= 70 THEN 'C-' 
when Score >= 67 THEN 'D+' 
when Score >= 60 THEN 'D'  
else 'F'  
end as grade 
from Stu; 


