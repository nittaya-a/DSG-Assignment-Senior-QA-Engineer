-- Answer A
select es.Salary + es.Variable as Total_Salary from EmployeeSalary es
-- Answer B
select ed.FullName From EmployeeDetails ed left join EmployeeSalary es on ed.EmpId = es.EmpId where es.Salary >= 5000 and es.Salary <= 10000
-- Answer C
select ed.FullName, es.Salary From EmployeeDetails ed left join EmployeeSalary es on ed.EmpId = es.EmpId