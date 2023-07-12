SELECT  d.name as Department, e.name as Employee, e.salary as Salary
FROM  Employee  AS e  
INNER JOIN  Department AS d  ON  d.id = e.departmentId
WHERE (
  SELECT COUNT(DISTINCT(salary))
  FROM  Employee
  WHERE salary > e.salary AND
        departmentId = e.departmentId    
) < 3;