SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

-- 소속 부서별 평균 급여를 부서번호와 함께 출력하기
SELECT dno AS"부서 번호",
AVG(salary) AS "급여 평균"
FROM employee
GROUP BY dno;

-- 소속 부서별 평균 급여 구하기
SELECT dno, AVG(salary) AS "급여 평균"
FROM employee
GROUP BY dno;

-- 그룹함수내의 잘못된 질의 예
SELECT dno, ename, avg(salary)
FROM employee
GROUP BY dno;

-- 다른 칼럼을 이용하여 그룹별로 검색하기
SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno, job
ORDER BY dno, job;

SELECT DISTINCT(job) FROM employee;

SELECT job, avg(salary) FROM employee
GROUP BY job;

-- 그룹함수는 WHERE에서 불가
SELECT job, avg(salary) FROM employee
WHERE avg(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job
HAVING avg(salary) >= 3000;

-- 부서별 급여 총액이 3000 이상인 부서의 번호와 부서별 그벼 총액 구하기
SELECT dno, max(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

-- 최고 급여 출력하기
SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

-- 혼자 해보기
-- 급여 최고액, 최저액, 총액 및 평균 급여 출력하기
SELECT MAX(salary) AS "MAXIMUM",
MIN(salary) AS "MINIMUM",
SUM(salary) AS "SUM",
ROUND(avg(salary)) AS "AVERAGE"
FROM employee;

-- 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균급여 출력하기
SELECT job AS "job",
MAX(salary) AS "Maximum",
MIN(salary) AS "Minimum",
SUM(salary) AS "Sum",
ROUND(AVG(salary)) AS "Average"
FROM employee
GROUP BY job;

-- 담당 업무가 동일한 사원수 출력하기
SELECT job, COUNT(*)
FROM employee
GROUP BY job;

-- 관리자 수 출력하기
SELECT COUNT(manager)
FROM employee;

-- 급여 최고액, 급여 최저액의 차액 출력하기
SELECT MAX(salary)-MIN(salary) AS difference
FROM employee;

-- 직급별 사원의 최저 급여 출력하기
SELECT job, min(salary)
FROM employee
GROUP BY job
HAVING NOT MIN(salary)<2000
ORDER BY MIN(salary) desc;

-- 부서별 사원수, 평균 급여 출력하기
SELECT dno, 
COUNT(*) AS "Number of People",
ROUND(AVG(salary),2) AS "Salary"
FROM employee
GROUP BY dno
ORDER BY dno asc;

-- 부서번호 이름, 지역명, 사원수, 부서내의 모든 사원의 평균 급여 출력하기
SELECT DECODE(dno, 10, 'ACCOUNTING',
                    20, 'RESEARCH',
                    30, 'SALES',
                    40, 'OPERATIONS') AS "dname",
      DECODE(dno, 10, 'NEW YOURK',
                  20, 'DALLAS',
                  30, 'CHICAGO',
                  40, 'BOSTON') AS "Location",
      COUNT(*) AS "Number of People",
      ROUND(AVG(salary)) AS "Salary"
FROM employee
GROUP BY dno;

SELECT  ROUND(AVG(salary)) AS "Salary" FROM employee;

-- 부서별 평균 총액 출력하기
SELECT job, dno,
DECODE(dno, 10, sum(salary)) AS "부서 10",
DECODE(dno, 20, sum(salary)) AS "부서 20",
DECODE(dno, 30, sum(salary)) AS "부서 30",
SUM(salary) AS "총액"
FROM employee
GROUP by job, dno
ORDER BY dno;

SELECT dno FROM employee;

SELECT ename, dno FROM employee
WHERE ename LIKE '%A%';



