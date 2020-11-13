select * FROM employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%D';
SELECT * FROM employee WHERE ename LIKE '%D%';
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT * FROM employee WHERE ename LIKE '_A%';

-- 예제 LIKE 연산자와 와일드카드로 이름이 'F'로 시작하는 사원 출력하기
SELECT * FROM employee WHERE ename LIKE 'F%';

-- LIKE 연산자와 와일드카드를 사용하지 않아 검색에 실패한 예
SELECT * FROM employee WHERE ename ='F';

-- 이름에 "M"이 포함되어 있는 사원 출력하기
SELECT * FROM employee WHERE ename LIKE '%M%';

-- 이름이 "N"으로 끝나는 사원 검색하기
SELECT * FROM employee WHERE ename LIKE '%N';

-- 이름의 두 번째 글자가 "A"인 사원 검색하기
SELECT * FROM employee WHERE ename LIKE '_A%';

-- 이름의 세번째 글자가 "A"인 사원 검색하기
SELECT * FROM employee WHERE ename LIKE '__A%';

-- NOT LIKE 연산자 사용하기
SELECT * FROM employee
WHERE ename NOT LIKE '%A%';

SELECT * FROM employee;
SELECT * FROM employee WHERE commission = NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

-- 예제 사원의 커미션 출력하기
SELECT ename, commission, dno FROM employee; 

-- 칼럼 값이 NULL인지 조회하기
SELECT * FROM employee WHERE commission IS NULL;

-- 칼럼 값이 NULL이 아닌지 조회하기
SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee ORDER BY eno;

SELECT * FROM employee WHERE 
salary > 2000 ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC;

SELECT * FROM employee
ORDER BY eno DESC;

SELECT * FROM employee
ORDER BY dno, ename;

SELECT dno, ename FROM employee
ORDER BY dno DESC, ename ASC;

-- 예제 오름차순으로 정렬하기
SELECT * FROM employee
ORDER BY salary ASC;

-- 정렬 방식 생략하기
SELECT * FROM employee
ORDER BY salary;

-- 내림차순 정렬하기
SELECT * FROM employee
ORDER BY salary DESC;

-- 문자데이터로 오름차순 정렬하기
SELECT * FROM employee
ORDER BY ename;

-- 날짜 데이터로 내림차순 정렬하기
SELECT * FROM employee
ORDER BY hiredate DESC;

-- 여러 개의 칼럼에 대해서 정렬 순서 정하기
SELECT * FROM employee
ORDER BY salary DESC, ename ASC;

-- 혼자해보기 --
-- 2.
SELECT ename, salary, salary*12+100 연봉 
FROM employee
ORDER BY 연봉 DESC;

-- 3.
SELECT ename, salary 
FROM employee 
WHERE salary > 2000 
ORDER BY salary DESC;

-- 7.
SELECT ename, dno 
FROM employee 
WHERE dno in(20, 30) 
ORDER BY ename DESC;

-- 8.
SELECT ename, salary, dno
FROM employee 
WHERE salary BETWEEN 2000 AND 3000
AND dno IN(20, 30) ORDER BY ename;

-- 9.
SELECT ename , hiredate 
FROM employee
WHERE hiredate LIKE '81%';

-- 10.
SELECT ename, job
FROM employee
WHERE MANAGER IS NULL;

-- 11.
SELECT ename, salary, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY salary, commission DESC;

-- 12.
SELECT ename
FROM employee
WHERE ename LIKE '__R%';

-- 13.
SELECT ename
FROM employee
WHERE ename LIKE '%A%'
AND ename LIKE '%E%';