-- 14개 행, 8개 열
SELECT * FROM employee;
-- 4개 행, 3개 열
SELECT * FROM department;

SELECT * FROM employee, department;


SELECT eno, ename, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

-- 예제 각 사원들이 소속된 부서정보 얻기
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

-- 사원번호, 사원이름, 소속부서 이름 출력하기
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- 모호한 칼럼명으로 인한 오류 예
SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- 칼럼명 앞에 테이블명 명시하기
SELECT employee.eno, employee.ename,department.dname,employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND employee.eno = 7788;

-- 부분적으로 칼럼명 앞에 테이블명 명시하기
SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- 테이블명에 별칭 사용하기
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7788;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dno
FROM employee e, department d
WHERE e.dno = d.dno;

-- 조인 칼럼에 테이블 별칭을 사용하여 오류가 발생한 예
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- 조인 칼럼에 테이블 별칭을 사용하지 않은 경우의 예
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE E.eno = 7788;

-- 혼자 해보기
-- 1. 특정 사원의 부서번호와 부서이름 출력하기
SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

-- 5. 이름에 A가 포함된 모든 사원의 이름과 부서 이름 출력하기
SELECT e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename LIKE '%A%';

SELECT e.eno, e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

-- join
SELECT * FROM employee natural join department;
SELECT * FROM employee natural join department
WHERE eno = 7782;

-- join using
SELECT * FROM employee join department USING(dno);
SELECT * FROM Employee JOIN department USING(dno)
WHERE eno = 7788;

-- join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
-- 컬럼명, 타입이 다를 때에도 사용 가능
SELECT * FROM employee e JOIN department d ON e. dno = d.dno
WHERE eno = 7788;

-- 조인 칼럼에 테이블 별칭을 사용하여 오류가 발생한 예
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- 조인 칼럼에 테이블 별칭을 사용하지 않은 경우의 예
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- USING 절 사용하기
SELECT e.eno, e.ename, d.dname, dno
FROM employee e join department d
USING(dno)
WHERE E.eno = 7788;

-- ON 절 사용하기
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e join department d
ON e.dno = d.dno
WHERE e.eno = 7788;

-- 혼자 해보기
-- 2. 사원의 부서번호, 부서이름, 지역명 출력하기
SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

-- 3. 10번 부서에 속하는 모든 담당 업무와 지역명 출력하기
SELECT dno, job, loc
FROM employee inner join department
USING(dno)
WHERE dno = 10;

-- 4. 커미션을 받는 사원의 이름, 부서이름, 지역명 출력하기
SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

-- 6. NEW YORK에 근무하는 사원 출력하기
SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

SELECT * 
FROM employee, department
WHERE employee.dno = department.dno;