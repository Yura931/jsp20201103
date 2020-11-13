SELECT * FROM employee;

SELECT ename 
FROM employee
WHERE ename LIKE 'A%';

SELECT *
FROM employee
WHERE ename LIKE '_A%';

SELECT *
FROM employee
WHERE job LIKE '__N%';

SELECT 'ABCDEFGHIJK',
LOWER('ABK') FROM dual;

SELECT LOWER(ename) FROM employee;

SELECT LOWER(job) FROM employee;

SELECT INITCAP(ename) FROM employee
WHERE salary BETWEEN 2000 AND 3000;

SELECT ename, LENGTH(ename) 이름길이 FROM employee;

SELECT CONCAT (ename, NVL(commission,0)) FROM employee;

SELECT 'ABC' || 'DEF' FROM dual;

SELECT job, SUBSTR(job, 4, 3) FROM employee;
SELECT job, SUBSTR(job, -3, 3) FROM employee;

SELECT hiredate, SUBSTR(hiredate, 1, 2) FROM employee;

SELECT ename
FROM employee
WHERE SUBSTR(hiredate, 1, 2) = '87';

SELECT ename, commission
FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT job , INSTR(job,'A', 3, 1) FROM employee;

SELECT LPAD(ename, 10, '#') FROM employee;

SELECT RPAD(NVL(commission,0), 10, '*') FROM employee
WHERE dno != 10;

SELECT salary, salary / 3, ROUND(salary / 3, 10) FROM employee;
SELECT salary, salary / 3, ROUND(salary / 3, 1) FROM employee;

SELECT salary, salary / 3, ROUND(salary / 3, -1) FROM employee;

SELECT salary, salary / 7, TRUNC(salary / 7, 1) FROM employee;
SELECT salary, salary / 7, TRUNC(salary / 7) FROM employee;

SELECT MOD(30, 7) FROM dual;

SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;


