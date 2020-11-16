SELECT *FROM employee;
SELECT ename, salary, commission, salary + commission as sum
FROM employee;

SELECT ename, commission, NVL(commission, 0) FROM employee;

-- 예제 NVL로 NULL 값 처리하기
SELECT ename, salary, commission, 
NVL(commission, 0), salary * 12 + NVL(commission, 0)
FROM employee
ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0)
FROM employee;

-- NVL2로 NULL 값 처리하기
SELECT ename, salary, commission,
NVL2(commission, salary * 12 + commission, salary*12)
FROM employee
ORDER BY job;

SELECT NULLIF('a','a') FROM dual;
SELECT NULLIF ('a','b') FROM dual;

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

-- COALESCE로 NULL 값 처리하기
SELECT ename, salary, commission,
COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;

SELECT ename, dno, 
DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF')
FROM employee;

-- DECODE로 부서이름 출력하기
SELECT ename, dno,
DECODE(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERATIONS', 'DEFAULT') AS DNAME
FROM employee
ORDER BY dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0'
                      END
FROM employee;
                 
-- CASE로 부서이름 출력하기
SELECT ename, dno,
CASE WHEN dno=10 THEN 'ACCOUNTING'
     WHEN dno=20 THEN 'RESEARCH'
     WHEN dno=30 THEN 'SALES'
     WHEN dno=40 THEN 'OPERATIONS'
     ELSE 'DEFAULT'
END AS DNAME
FROM employee
ORDER BY dno;

-- 혼자해보기
-- 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL 값 대신 0으로 출력하시오.
SELECT eno, ename,
NVL2(manager,manager,0) AS MANAGER
FROM employee;

-- DECODE 함수로 직급에 따라 급여를 인상하도록 하시오.
-- 직급이 'ANAIYST'인 사원은 200, 'SALESMAN'인 사원은 180, 'MANAGER'인 사원은 150, 'CLERK'인 사원은 100을 인상하시오.
SELECT eno, ename, job, salary,
DECODE(JOB, 'ANALYST', salary+200,
            'SALESMAN', salary+180,
            'MANAGER', salary+150,
            'CLERK', salary+100,
            salary) AS update_salary
FROM employee;            

SELECT * FROM employee;

SELECT eno, ename, job, salary, NVL(commission,0) FROM employee;

SELECT eno, ename, job, salary, NVL2(commission, salary * 12, NVL(commission,0)) 
FROM employee ORDER BY eno;