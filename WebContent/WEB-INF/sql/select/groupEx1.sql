SELECT commission, NVL(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;


SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

-- 예제 사원들의 급여 총액, 평균액, 최고액, 최소액 출력하기
SELECT SUM(salary) AS "급여총액",
        AVG(salary) AS "급여평균",
        MAX(salary) AS "최대급여",
        MIN(salary) AS "최소급여"
FROM employee;

-- 최근에 입사한 사원과 가장 오래전에 입사한사원의 입사일 출력하기
SELECT MAX(hiredate), MIN(hiredate)
FROM employee;

SELECT COUNT(commission) FROM employee;
-- NULL을 제외한 값만 COUNT 됨
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

-- 사원들의 커미션 총액 출력하기
SELECT SUM(commission) AS "커미션 총액"
FROM employee;

-- 전체 사원의 수 구하기
SELECT COUNT(*) AS "사원의 수"
FROM employee;

-- 커미션을 받는 사원의 수 구하기
SELECT COUNT(commission) AS "커미션 받는 사원 수"
FROM employee;

-- 직업 종류의 개수 출력하기, 중복된 데이터 제거
SELECT COUNT(DISTINCT job) AS "직업 종류의 개수"
FROM employee;

SELECT COUNT(job) FROM employee;
SELECT SUM(salary) FROM employee;

SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

