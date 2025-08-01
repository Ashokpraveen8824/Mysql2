create database Samples
use Samples
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,department,year) VALUES (
111,'xxx','Computer Science',4),
(122,'yyy','AI&DS',3),
(104,'zzz','Information Technology',3),
(130,'asd','Cyber Security',1);
SELECT*FROM Stud;
UPDATE Stud
SET name='saravanan',
department='former',
year=5 WHERE reg_no=130;
INSERT INTO Stud(reg_no,name,department,year) VALUES(145,'asdf','MONI',2);
SELECT*FROM Stud;

alter table Stud
add phone_num varchar(13);

update Stud
set phone_num='7020495345' where reg_no=122;
update Stud
set phone_num='9039572953' where reg_no=111;
update Stud
set phone_num='6382804983' where reg_no=104;
update Stud
set phone_num='9867574849' where reg_no=130;
update Stud
set phone_num='9087654321' where reg_no=145;

01-08-25

SELECT COUNT(*) AS tot_Student FROM Stud;
SELECT MAX(year) AS max_yr FROM Stud;
SELECT MIN(year)AS min_yr FROM Stud;
SELECT AVG(year) AS av_yr FROM Stud;
SELECT department, COUNT(*) AS dept_count FROM Stud GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM Stud GROUP BY department;

SELECT * FROM Stud
ORDER BY year asc;

select*from Stud
order by name;

select*from Stud
order by department desc;

select upper(department) as dep_upr from Stud;
select upper(name) as name_upr from Stud;
select lower(name) as name_upr from Stud;
select left(name,1) as srt from Stud;
select name,length(name) as name_ln from Stud;
select concat(name,'@@@@',department) as combine from Stud;

select name,year,year+1 as nx_yr from Stud;
select reg_no,mod(reg_no,2) as ord from Stud;

alter table Stud
add Date_Detail date;

select*from Stud;

update Stud set Date_Detail='2004-08-08' where reg_no=104; 
update Stud set Date_Detail='2004-09-06' where reg_no=111; 
update Stud set Date_Detail='2004-05-11' where reg_no=122; 
update Stud set Date_Detail='2004-04-23' where reg_no=130; 
update Stud set Date_Detail='2004-02-4' where reg_no=145; 

select curdate();
select curtime();

select reg_no,name,year(Date_Detail) as yr from Stud;




























