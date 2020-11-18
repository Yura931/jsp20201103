-- 14 * 14만큼의 레코드가 조회 됨
SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;
-- e2.eno가 null이거나 e1.manager가 null이면 그 값은equi join에서 무조건 제외 됨
-- null값이 제외 되어 13개의 로우값만 나옴
-- null 값 까지 표시하고 싶을 때
-- inner join = null 생략, outer join 
-- null값을 표시하는 방법 두 가지

SELECT * FROM employee;
-- 총 직원의 수 14, null 값 빠짐

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;
-- 둘 다 inner join 쿼리, 특별한 조건 없으면 무조건 inner join --
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2 
ON e1.manager = e2 .eno;

-- LEFT, RIGHT OUTER JOIN 왼쪽, 오른쪽 null값을 가진 칼럼의 다른 칼럼의 로우 표시
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- LEFT OUTER JOIN과 같은 결과, 오른쪽 컬럼에(+)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

-- RIGHT OUTER JOIN
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- RIGHT OUTER JOIN, 왼쪽 칼럼에(+)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager(+) = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;
-- null값을 가진 모든 칼럼의 모든 로우 조회

-- ANSI OUTER JOIN 사용하기
SELECT employees.ename || '의 직속 상관은' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

-- 혼자해보기
-- 특정 사원의 부서번호와 부서이름 출력하기
SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

-- 사원의 부서번호, 부서이름, 지역명 출력하기
SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

-- 10번 부서에 속하는 모든 담당 업무와 지역명 출력하기
SELECT dno, job, loc
FROM employee inner join department
USING(dno)
WHERE dno = 10;

-- 커미션을 받는 사원의 이름, 부서이름, 지역명 출력하기
SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

-- 이름에 A가 포함된 모든 사원의 이름과 부서 이름 출력하기
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename LIKE '%A%';

-- NEW YORK에 근무하는 사원 출력하기
SELECT ename, job, dno, dname
FROM employee NATURAL JOIN department
WHERE loc = 'NEW YORK';

-- 각 사원의 관리자 이름 및 관리자 번호 출력하기
SELECT emp.ename AS "Employee",
emp.manager AS "Emp#",
mgr.eno AS "Manager",
mgr.ename AS "MGR#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno;

-- 관리자가 없는 사원을 포함하여 각 사원의 관리자 이름 출력하기
SELECT emp.ename as "Employee",
emp.manager as "Emp#",
mgr.eno As "Manager",
mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno(+)
ORDER BY emp.eno DESC;

-- 동일한 부서에서 근무하는 사원 출력하기
SELECT me.ename as 이름, me.dno as 부서번호, other.ename as 동료
FROM employee me, employee other
WHERE me.dno = other.dno
AND me.ename='SCOTT'
AND other.ename!='SCOTT';

-- WARD 사원보다 늦게 입사한 사원 출력하기
SELECT other.ename, other.hiredate
FROM employee ward, employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename='WARD'
ORDER BY hiredate;

-- 관리자보다 먼저 입사한 사원 출력하기
SELECT other.ename, other.hiredate, mgr.ename, mgr.hiredate
FROM employee mgr, employee other
WHERE other.manager = mgr.eno
AND other.hiredate <= mgr.hiredate;
