select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';

SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';

SELECT * FROM employee WHERE hiredate = '1981/02/20';

-- 예제 급여(SALARY)가 1500 이상인 사원 출력하기
SELECT * 
FROM employee
WHERE salary >= 1500;

-- 10번 부서 소속 사원 출력하기
SELECT *
FROM employee
WHERE dno = 10;

-- SCOTT를 칼럼으로 간주하고 오류를 발생한 예
SELECT *
FROM employee
WHERE ename = 'SCOTT';

-- 입사일(HIREDATE)이 '1981/01/01' 이전인 사원만 출력하기
SELECT *
FROM employee
WHERE hiredate <= '1981/01/01';

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/02/22' OR salary > 3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary > 2000 dno <> 30;

-- 예제 부서번호가 10이고 직급이 'MANAGER'인 사원만 출력하기
SELECT * FROM employee
WHERE dno = 10 AND job = 'MANAGER';

-- 부서번호가 10이거나 직급이 'MANAGER'인 사원만 출력하기
SELECT * FROM employee
WHERE dno = 10 OR job = 'MANAGER';

-- NOT을 이용한 조건 지정하기
SELECT * FROM employee
WHERE NOT dno = 10;

-- <>을 이용한 조건 지정하기
SELECT * FROM employee
WHERE dno <> 10;

-- 급여가 1000에서 1500 사이인 사원 출력하기
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- 급여가 1000 미만 이거나 1500 초과인 사원 출력하기
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 커미션이 300이거나 500이거나 1400인 사원 출력하기
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT * FROM employee
WHERE dno IN (10, 20);

SELECT * FROM employee
WHERE dno NOT IN (20);

-- 예제 BETWEEN AND 연산자 사용하기
SELECT * FROM employee
WHERE salary BETWEEN 1000 and 1500;

-- AND 논리 연산자 사용하기
SELECT * FROM employee
WHERE salary >= 1000 and salary <= 1500;

-- NOT BETWEEN AND 연산자 사용하기
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 and 1500;

-- OR 논리 연산자 사용하기
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 1982년에 입사한 사원 출력하기
SELECT * FROM employee
WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31';

-- IN연산자 사용하기
SELECT * FROM employee
WHERE commission IN (300, 500, 1400);

-- OR 논리 연산자 사용하기
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

-- <> 연산자 사용하기
SELECT * FROM employee
WHERE commission <> 300 and commission = 500 OR commission = 1400;

-- NOT IN 연산자 사용하기
SELECT * FROM employee
WHERE commission NOT IN(300, 500, 1400);

-- 혼자 해보기
-- 1. 덧셈 연산자를 이용하여 모든 사원에 대해서 $300의 급여 인상을 계산한 후 사원의 이름, 급여, 인상된 급여를 출력하시오.
SELECT ename, salary, salary + 300 
FROM employee;

-- 4. 사원번호가 7788인 사원의 이름과 부서번호를 출력하시오.
SELECT ename, dno FROM employee
WHERE eno = 7788;

SELECT * FROM employee;

-- 5. 급여가 2000에서 3000 사이에 포함되지 않는 사원의 이름과 급여를 출력하시오.
SELECT ename, salary FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 6. 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 이름, 담당업무, 입사일을 출력하시오.
SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 14. 담당 업무가 사무원(CLERK) 또는 영업사원(SALESMAN) 이면서 급여가 $1600, $950 또는 $1300이 아닌 사원의 이름, 담당업무, 급여를 출력하시오.
SELECT ename, job, salary FROM employee
WHERE job IN('CLERK', 'SALESMAN') AND salary NOT IN(1600, 950, 1300);

-- 15. 커미션이 $500 이상인 사원의 이름과 급여 및 커미션을 출력하시오.
SELECT ename, salary, commission FROM employee
WHERE commission >= 500;

SELECT ename FROM employee WHERE eno = 7499;

SELECT * FROM employee;
SELECT * FROM department;