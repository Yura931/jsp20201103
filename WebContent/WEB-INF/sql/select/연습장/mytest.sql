-- 급여(salary)가 1500 이상인 사원 출력하기
SELECT * FROM employee WHERE salary >= 1500;

-- 10번 부서 소속 사원 출력하기
SELECT * FROM employee WHERE dno = 10;

-- 이름이 SCOTT인 사원 출력하기
SELECT * FROM employee WHERE ename = 'SCOTT';

-- 입사일(hiredate)이 '1981/01/01' 이전인 사원만 출력하기
SELECT * FROM employee WHERE hiredate <='1981/01/01';

-- 부서번호가 10이고 직급이 'MANAGER'인 사원만 출력하기
SELECT * FROM employee WHERE dno = 10 AND job = 'MANAGER';

-- 부서번호가 10이거나 직급이 'MANAGER'인 사원만 출력하기
SELECT * FROM employee WHERE dno = 10 OR job = 'MANAGER';

-- NOT을 이용한 조건 지정하기
SELECT * FROM employee
WHERE NOT dno = 10;

-- <>를 이용한 조건 지정하기
SELECT * FROM employee
WHERE dno <> 10;

-- 급여가 1000에서 1500 사이인 사원 출력하기
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- 급여가 1000 미만이거나 1500 초과인 사원 출력하기
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 커미션이 300이거나 500이거나 1400인 사람 출력하기
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

-- BETWEEN AND 연산자 사용하기
SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 1500;

-- AND 논리 연산자 사용하기
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- NOT BETWEEN AND 연산자 사용하기
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

-- OR 논리 연산자 사용하기
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 1982년에 입사한 사원 출력하기
SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

-- IN 연산자 사용하기
SELECT * FROM employee
WHERE commission in(300, 500, 1400);

-- OR 논리 연산자 사용하기
SELECT * FROM employee
WHERE commission=300 OR commission=500 OR commission=1400;

-- <> 연산자 사용하기
SELECT * FROM employee
WHERE commission<>300 AND commission<>500 AND commission<>1400;

-- NOT IN 연산자 사용하기
SELECT * FROM employee
WHERE commission NOT IN(300, 500, 1400);

SELECT * FROM Employee
WHERE ename NOT IN('SCOTT');

-- LIKE 연산자와 와일드카드로 이름이 'F'로 시작하는 사원 출력하기
SELECT * FROM employee
WHERE ename LIKE 'F%';

-- LIKE 연산자와 와일드카드를 사용하지 않아 검색에 실패한 예
SELECT * FROM employee
WHERE ename = 'F';

-- 이름에 'M'이 포함되어 있는 사원 출력하기
SELECT * FROM employee
WHERE ename LIKE '%M%';

-- 이름이 'N'으로 긑나는 사원 검색하기
SELECT * FROM employee
WHERE ename LIKE '%N';

-- 이름의 두 번째 글자가 'A'인 사원 검색하기
SELECT * FROM employee
WHERE ename LIKE '_A%';

-- 이름의 세 번쨰 글자가 'A'인 사원 검색하기
SELECT * FROM employee
WHERE ename LIKE '__A%';

-- NOT LIKE 연산자 사용하기
SELECT * FROM employee
WHERE ename NOT LIKE '%A%' AND ename NOT LIKE 'A%';

-- 사원의 커미션 출력하기
SELECT ename, dno, commission
FROM employee;

-- 커미션이 NULL인 사원을 찾는데 실패하는 예
SELECT * FROM employee 
WHERE commission = null;

-- 칼럼 값이 NULL인지 조회하기
SELECT * FROM employee
WHERE commission IS NULL;

-- 칼럼 값이 NULL이 아닌지 조회하기
SELECT * FROM employee
WHERE commission IS NOT NULL;

-- 오름차순으로 정렬하기
SELECT * FROM employee
ORDER BY salary ASC;

-- 정렬 방식 생략하기
SELECT * FROM employee
ORDER BY salary;

-- 내림차순 정렬하기
SELECT * FROM employee
ORDER BY salary DESC;

-- 문자 데이터로 오름차순 정렬하기
SELECT * FROM employee
ORDER BY ename;

-- 날짜 데이터로 내림차순 정렬하기
SELECT * FROM employee
ORDER BY hiredate DESC;

-- 여러 개의 칼럼에 대해서 정렬 순서 정하기
SELECT * FROM employee
ORDER BY ename DESC, salary ASC;

-- 급여 $300 인상하기
SELECT ename, salary, salary + 300 FROM employee ;

-- 총수입 순(수입이 많은 것부터 작아지도록)으로 출력하기
SELECT ename, salary, salary * 12 + 100 AS "연봉"
FROM employee
ORDER BY "연봉" DESC;

-- 사원번호가 7788인 사원 출력하기
SELECT ename, dno
FROM employee
WHERE eno = 7788;

-- 급여가 2000 에서 3000 사이에 포함되지 않는 사원 출력하기
SELECT dno, ename 
FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 1981년 2월 20일 부터 1981 5월 1일 사이에 입사한 사원 출력하기
SELECT *
FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 부서 20 및 30에 속한 사원 출력하기
SELECT ename, dno
FROM employee
WHERE dno IN(20, 30)
ORDER BY ename;

-- 급여가 2000에서 3000 사이에 포함되고 부서번호가 20 또는 30인 사원 출력하기
SELECT ename , dno
FROM employee
WHERE salary BETWEEN 2000 AND 3000 
AND dno IN(20, 30)
ORDER BY dno;

-- 1981년도에 입사한 사원 출력하기
SELECT ename, dno, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31'
ORDER BY hiredate;

SELECT ename, dno, hiredate
FROM employee
WHERE hiredate LIKE '81%';

-- 관리자가 없는 사원 출력하기
SELECT ename, job
FROM employee
WHERE manager IS NULL;

-- 커미션을 받을 수 있는 자격이 되는 사원 출력하기
SELECT ename, job, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY ename ASC, commission DESC;

-- 이름의 세 번째 문자가 R인 사원 출력하기
SELECT eno, ename, job, salary, hiredate
FROM employee
WHERE ename LIKE '__R%'
ORDER BY eno;

-- 이름에 A와 E를 모두 포함하고 있는 사원 출력하기
SELECT eno, ename, job
FROM employee
WHERE ename LIKE '%A%'
AND ename LIKE '%E%'
ORDER BY eno;

-- 사무원 또는 영업사원이면서 급여가 $1600, $950 또는 $1300가 아닌 사원 출력하기
SELECT ename, job, salary
FROM employee
WHERE job IN('CLERK', 'SALESMAN') AND
salary NOT IN(1600, 950, 1300);

-- 커미션이 $500 이상인 사원 출력하기
SELECT ename, job, salary, commission
FROM employee
WHERE commission >= 500;

-- 대소문자 변환 함수 사용하기
SELECT 'Oracle mania',
UPPER('Oracle manian'),
LOWER('Oracle mania'),
INITCAP('Oracle mania')
FROM dual;

-- 대소문자 변환 함수를 칼럼에 사용하기
SELECT ename, LOWER(ename), job, INITCAP(job)
FROM employee;

-- scott 사원 검색하기
SELECT eno, ename, dno
FROM employee
WHERE LOWER(ename)='scott';

-- Scott 사원 검색하기
SELECT eno, ename, dno
FROM employee
WHERE INITCAP(ename) = 'Scott';

-- 영문과 한글의 길이 구하기
SELECT LENGTH('Oracle mania'), LENGTH('오라클매니아')
FROM dual;

-- 영문과 한글의 바이트 수 구하기
SELECT LENGTHB('Oracle mania'), LENGTHB('오라클매니아')
FROM dual;

-- 문자 결합하기
SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania')
FROM dual;

-- 문자열의 일부만 추출하기
SELECT SUBSTR('Oracle mania', 4, 3),
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- 이름이 N으로 끝나는 사원 표시하기
SELECT *
FROM employee
WHERE SUBSTR(ename, -1, 1) = 'N';

-- 87년도에 입사한 사원 찾기
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 1, 2) = '87';

-- SUBSTR 함수로 영문 추출하기
SELECT SUBSTR('Oracle mania', 4, 3) ,
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- 문자 위치 찾기
SELECT INSTR('Oracle mania', 'a')
FROM dual;

-- 특정 위치 이후의 문자 찾기
SELECT INSTR('Oracle mania', 'a', 5, 2)
FROM dual;

-- 사원 검색하기
SELECT * 
FROM employee
WHERE INSTR(ename, 'R', 3, 1) = 3;

-- 왼쪽 자리를 특정 기호로 채우기
SELECT LPAD(salary, 10, '*')
FROM employee;

-- 오른쪽 자리를 특정 기호로 채우기
SELECT RPAD(salary, 10, '#')
FROM employee;

-- 한쪽 공백 제거하자
SELECT ' Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM(' Oracle mania ')
FROM dual;

-- 특정 문자 제거하기
SELECT 'Oracle mania', TRIM('O' FROM 'Oracle mania')
FROM dual;

-- 앞뒤 공백 제거하기
SELECT TRIM(' Oracle mania ')
FROM dual;

-- 반올림하기
SELECT 98.7654,
ROUND(98.7654),
ROUND(98.7654, 2),
ROUND(98.7654, -1)
FROM dual;

-- 잘라내기
SELECT 98.7654,
TRUNC(98.7654),
TRUNC(98.7654, 2),
TRUNC(98.7654, -1)
FROM dual;

-- 나머지 반환하기
SELECT MOD(31, 2),
MOD(31, 5),
MOD(31, 8)
FROM dual;

-- 나머지 구하기
SELECT ename, salary, MOD(salary, 500)
FROM employee;

-- 현재 날짜 표시하기
SELECT sysdate
FROM dual;

-- 날짜 계산하기
SELECT SYSDATE -1 어제,
SYSDATE 오늘,
SYSDATE +1 내일
FROM dual;

-- 근무일수 계산하기
SELECT ROUND(SYSDATE-HIREDATE) 근무일수
FROM employee;

-- 특정 날짜(DATE)에서 월(MONTH)을 기준으로 버림한 날짜 구하기
SELECT hiredate,
TRUNC(HIREDATE, 'MONTH')
FROM employee;

-- 각 사원들이 근무한 개월 수 구하기
SELECT ename, sysdate, hiredate,
TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE))
FROM employee;

-- 입사한지 6개월 지난 날짜 구하기
SELECT ename, hiredate,
ADD_MONTHS(HIREDATE, 6)
FROM employee;

-- 오늘을 기준으로 최초로 도래하는 토요일 구하기
SELECT SYSDATE,
NEXT_DAY(SYSDATE, '토요일')
FROM dual;

-- 입사한 달의 마지막 날 구하기
SELECT ename, hiredate,
LAST_DAY(HIREDATE)
FROM Employee;

-- 날짜 함수 사용하기
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM'),
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;
