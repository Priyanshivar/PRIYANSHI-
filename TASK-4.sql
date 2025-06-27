create table tbl_Employee
(
eid int primary key identity(1,2),
ename nvarchar(50),
eage int,
eaddress nvarchar(50),
epost nvarchar(50),
esalary decimal(24,2)
)
select * from tbl_Employee
insert into tbl_Employee(ename,eage,eaddress,epost,esalary) values
(
'manoj',18,'noida sec-23','SE',33333.34
)
insert into tbl_Employee(ename,eage,eaddress,epost,esalary) values
(
'rahul',19,'noida sec-13','Clerk',13333.34
)
insert into tbl_Employee(ename,eage,eaddress,epost,esalary) values
(
'manoj',21,'noida sec-43','TL',23333.34
)
insert into tbl_Employee(ename,eage,eaddress,epost,esalary) values
(
'manoj',25,'noida sec-445','Manager',67333.34
)
insert into tbl_Employee(ename,epost,esalary) values
(
'manoj','TL',63333.34
)
select * from tbl_Employee
WHERE eage is null
#Q3

DELETE FROM tbl_Employee
WHERE ename= 'manoj';

UPDATE tbl_Employee
SET epost='POST'
WHERE eaddress='noida sec-13'
#TASK3
select * from tbl_Employee
WHERE epost = 'POST' AND ename = 'manoj';

select * from tbl_Employee
WHERE epost = 'POST' AND epost = 'Manager';

SELECT * FROM tbl_Employee
WHERE ename Like 'A%';

SELECT * FROM tbl_Employee
WHERE eage BETWEEN 20 AND 22;

SELECT * FROM tbl_Employee
ORDER BY ename;

SELECT * FROM tbl_Employee
ORDER BY  eage DESC;

SELECT * FROM tbl_Employee 
ORDER BY epost ASC, ename ASC;

select max(esalary) as 'max_Salary' from tbl_Employee
select min(esalary) as 'min_Salary' from tbl_Employee
select sum(esalary) as 'Total_Salary' from tbl_Employee
select avg(esalary) as 'Avg_Salary' from tbl_Employee
select count(*) as 'Total Employee' from tbl_Employee
select * from tbl_Employee


--waq to get total number of employee in each department.
select epost,count(*) from tbl_Employee group by epost

-- waq to get total number of salary in each department and total no. of employee
select epost,sum(esalary) as 'Total_Salary',count(*) as 'Total_Employee' from tbl_Employee group by epost

--Q3
-- waq to get total salary in SE department.
select epost,sum(esalary) from tbl_Employee group by epost having epost='SE'

-- waq to get total no. employee in each deparment where employee is less than 2.
select epost,count(*) from tbl_Employee group by epost having count(eid)>=2
select epost,sum(esalary) from tbl_Employee group by epost having epost='SE'

-- waq to get total no. employee in each deparment where employee is less than 2.
select epost,count(*) from tbl_Employee group by epost having count(eid)>=2




