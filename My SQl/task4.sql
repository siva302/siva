use mitraz;
create table doctors(
doc_id int primary key,
doc_name varchar(50),
dept varchar(50),
day int);
insert into doctors
values(101,'jk mishra','ortho',3),
(102,'mahesh tripathi','ent',4),
(103,'ravi kumar','neuro',5),
(104,'mukesh jain','pysio',3);
select * from doctors;
desc doctors;
select * from doctors where day>3;
create table patients(
patno int,
patname varchar(50),
depart varchar(50),
pdoc_id int,
foreign key(pdoc_id) references doctors(doc_id));
desc patients;
insert into patients
values(1,'payal','ent',102),
(2,'naveen','ortho',101),
(3,'rakesh','neuro',103),
(4,'atul','pysio',104);
select * from patients;
-- >1 to display patno, patname, and corressponding Docname for each point
select patno,patname,depart,pdoc_id,doc_name
from doctors inner join patients
on doctors.doc_id=patients.pdoc_id;
-- >2  to display the list of all doctors whose no
select * from doctors where day>3;
-- >3 to display docname,department,patname and docid from both tables where docid is either 101 or 103

select doc_name,dept,patname,doc_id
from doctors inner join patients
on doctors.doc_id=patients.pdoc_id 
where doc_id=101 or doc_id=103;
-- >4 to display total no. of different departments from patients table
select count(depart) from patients;



