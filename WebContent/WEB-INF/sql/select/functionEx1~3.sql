SELECT sysdate FROM dual;
SELECT sysdate FROM employee;

SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS ename FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle mania') AS namea FROM dual;

-- 예제 대소문자 변환 함수 사용하기
SELECT 'Oracle mania', 
UPPER('Oracle mania'), 
LOWER('Oracle mania'), 
INITCAP('Oracle mania') FROM dual;

-- 대소문자 변환 함수를 칼럼에 사용하기
SELECT ename, LOWER(ename), job, INITCAP(job)
FROM employee;

-- scott 사원 검색하기
SELECT eno, ename, dno 
FROM employee
WHERE ename = 'scott';

-- scott 사원 검색하기
SELECT eno,ename, dno
FROM employee
WHERE LOWER(ename)='scott';

-- Scott 사원 검색하기
SELECT eno,ename,dno
FROM employee
WHERE INITCAP(ename)='Scott';

SELECT * FROM employee 
WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) LENGTH  FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTHB('웹프로그래밍') FROM dual;

-- 예제 영문과 한글의 길이 구하기
SELECT LENGTH('OracleMania'), length('오라클매니아')
FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;

SELECT SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

-- 예제 문자 결합하기
SELECT 'Oracle', 'Mania', CONCAT('Oracle','Mania')
FROM dual;

-- 문자열의 일부만 추출하기
SELECT SUBSTR('Oracle mania', 4, 3),
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- 이름이 N으로 끝나는 사원 표시하기
SELECT *
FROM employee
WHERE SUBSTR(ename, -1, 1)='N';

-- 87년도에 입사한 사원 표시하기
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 1, 2) = 87;

SELECT * 
FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'yyyy-mm-dd'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

-- 예제 문자 위치 찾기
SELECT INSTR('Oracle mania', 'a')
FROM dual;

-- 특정 위치 이후의 문자 위치 찾기
SELECT INSTR('Oracle mania', 'a', 5, 2)
FROM dual;

SELECT *
FROM employee
WHERE INSTR(ename, 'R', 3, 1) = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;

SELECT ename, RPAD(ename, 10, '*') FROM employee;

-- 왼쪽 자리를 특정 기호로 채우기
SELECT LPAD(salary, 10, '*')
FROM employee;

-- 오른쪽 자리를 특정 기호로 채우기
SELECT RPAD(salary, 10, '*')
FROM employee;

SELECT TRIM('  ABC  ') FROM dual;
SELECT RTRIM('  ABC  ') FROM dual;
SELECT LTRIM('  ABC  ') FROM dual;

-- 한쪽 공백 제거하기
SELECT ' Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM(' Oracle mania ')
FROM dual;

-- 특정 문자 제거하기
SELECT 'Oracle mania',
TRIM('O'FROM 'Oraclm manai')
FROM dual;

-- 앞뒤 공백 제거하기
SELECT TRIM(' Oracle mania ')
FROM dual;