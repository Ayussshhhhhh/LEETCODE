CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
declare a int;
set a = N-1;
  RETURN (
        select distinct salary
        from Employee
        order by salary desc
        limit a,1
  );
END