select * from employee where e.Salary>
(select AVG(Salary)
from employee e inner join department d on e.DepartmentID=d.DepartmentID
group by e.DepartmentID)
group by departmentID

select * from department

select count(employeeID)
from employee e full outer join department d on e.DepartmentID=d.DepartmentID
group by employeeID

select count(employeeid),departmentID
from employee 
group by employee_id

select avg(Age),departmentID
from employee 
group by departmentID
order by avg(Age) desc
where rownum=3


CREATE PROCEDURE GetJobTitleFromDepartment @deptID int
AS
begin
SELECT JobTitle FROM employee WHERE departmentID = @deptID 
END

EXEC GetJobTitleFromDepartment @deptID = 1

SELECT JobTitle FROM employee WHERE departmentID = 1

select* from employee where
salary>(
select avg(Salary),departmentID
from employee 
group by departmentID)

select * from employee where

 List all departments and the job title of the employee with the highest salary in each department.

create table test as
select max(Salary) sal,departmentID
from employee 
group by departmentID

select* from employee e full outer join department d
on
e.departmentID=d.departmentID 
where
e.salary (
select avg(Salary)
from employee 
where departmentID=e.deptmentID
group by departmentID)



order by avg(Age) desc
where rownum=3



CREATE TRIGGER updt_emp
AFTER UPDATE ON department
FOR EACH ROW
BEGIN
    UPDATE employee
    SET departmentID = NEW.departmentID
    WHERE departmentid = OLD.departmentID;
END;