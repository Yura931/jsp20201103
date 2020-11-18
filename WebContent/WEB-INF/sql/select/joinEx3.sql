SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

-- 사원의 관리자
SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager,
e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

-- WHERE 절을 사용한 SELF JOIN
SELECT employees.eno, employees.ename as ename, manager.ename AS manager
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

-- JOIN ~ ON 절을 사용한 SELF JOIN
SELECT employees.ename || '의 직속상관은' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno;

SELECT e1.eno, e1.ename , e2.eno, e2.manager, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno
AND e2.eno = 7839;

