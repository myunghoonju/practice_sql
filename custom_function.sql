-- https://leetcode.com/problems/nth-highest-salary/
create function getNthHighestSalary(N INT) 
returns INT

begin
  return (
     select
		case
			when count(sub.salary) < n then null
			else min(sub.salary)
		end	
	 from (
		select distinct(salary)
		from employee
		order by salary desc
		limit n
	) as sub
  );
end

----------------if else --------------------------
create function getNthHighestSalary(N INT) 
returns INT

begin
  return (
     select
		if (count(sub.salary) < n, null, min(sub.salary))
	 from (
		select distinct(salary)
		from employee
		order by salary desc
		limit n
	) as sub
  );
end

--------------limit, offset ---------------------------------
create function getNthHighestSalary(N INT) 
returns INT

begin
  declare a int;
  set a = n-1;	
  return (
		select distinct(salary)
		from employee
		order by salary desc
		limit 1 offset a
  );
end