-- NATURAL JOIN
SELECT e.eno, e.ename, d.dname, dno
FROM employee e NATURAL JOIN department d
WHERE e.eno = 7788;

-- 날짜 함수 사용하기
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM')
FROM employee;

SELECT ename ,hiredate,
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;

-- 현재 날짜와 시간 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD DAY, HH24:MI:SS')
FROM dual;

-- 급여를 출력하면서 통화 기호 덧붙이기
SELECT ename, TO_CHAR(salary, 'L999,999')
FROM employee;

-- 1981년 2월 20일에 입사한 사원 검색하기
SELECT ename, hiredate
FROM employee
WHERE hiredate = 198110220;

SELECT ename, hiredate
FROM employee
WHERE hiredate = TO_DATE(19810220, 'YYYY-MM-DD');

-- 숫자 형태의 문자 빼기 : 문자형이기 때문에 산술 연산을 수행하지 못하고 오류가 발생
SELECT '100,000' - '50,000'
FROM dual;

-- 수치 형태로 변환한 후 빼기
SELECT TO_NUMBER('100,000' , '999,999') - TO_NUMBER('50,000', '999,999')
FROM dual;

-- NULL 값 처리
SELECT NVL(commission, 0),
NVL(hiredate, '2011/5/10'),
NVL(job, 'MANAGER') 
FROM employee;

-- NVL로 NULL 값 처리하기
SELECT ename, salary, commission, job,
NVL(commission, 0), salary * 12 + NVL(commission, 0)
FROM employee
ORDER BY job;

-- NVL2로 NULL 값 처리하기
SELECT ename, salary, commission,
NVL2(commission, salary*12+commission, salary*12)
FROM employee
ORDER BY job;

-- NULLIF로 NULL 값 처리하기 - 두 표현식을 비교하여 동일한 경우에는 NULL을 반환하고 동일하지 않으면 첫 번째 표현식을 반환한다.
SELECT NULLIF('A', 'A'), NULLIF('A', 'B')
FROM dual;

-- COALESCE로 NULL 값 처리하기 - 인수 중에서 NULL이 아닌 첫 번째 인수를 반환
SELECT ename, salary, commission,
COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;

SELECT ename, salary, commission,
COALESCE(commission, salary * 12, 0)
FROM employee
ORDER BY job;

-- DECODE로 부서이름 출력하기
SELECT ename, dno,
DECODE(dno, 10, 'ACC', 20, 'RES', 30, 'SAL', 40, 'OPE', 'DEF') AS DNAME
FROM employee
ORDER BY job;

-- CASE로 부서이름 출력하기
SELECT ename, dno,
CASE WHEN dno = 10 THEN 'ACC'
WHEN dno = 20 THEN 'RES'
WHEN dno = 30 THEN 'SAL'
WHEN dno = 40 THEN 'OPE'
ELSE 'DEF'
END DNAME FROM employee
ORDER BY dno;

-- 혼자 해보기
-- 입사년도와 달 출력하기
SELECT dno, ename, job, SUBSTR(hiredate, 1, 2) ,
SUBSTR(hiredate, -2, 2)
FROM employee
ORDER BY dno ASC ,ename DESC;

-- 4월에 입사한 사원 출력하기
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 3, 1) = '/';

-- 사번이 짝수인 사원 출력하기
SELECT *
FROM employee
WHERE MOD(eno, 2) = 0;

-- 입사일 출력하기
SELECT HIREDATE, TO_CHAR(HIREDATE, 'YY/MON/DAY')
FROM employee;

-- 올해 며칠이 지났는지 계산하기
SELECT TRUNC(SYSDATE - TO_DATE('2011/01/01' , 'YYYY/MM/DD'))
FROM dual;

-- 상관의 사번 출력하기
SELECT eno, ename,
NVL(manager, 0) MANAGER
FROM employee;

-- 급여 인상하기
SELECT eno, ename, job salary,
DECODE(job, 'ANAIYST', salary + 200,
'SALESMAN' , salary +180,
'MANAGER', salary + 150,
'CLERK', salary + 100,
salary) FROM employee;

-- 그룹함수
-- 사원들의 급여 총액, 평균액, 최고액, 최소액 출력하기
SELECT SUM(salary) AS "급여총액" , MAX(salary), MIN(salary), AVG(salary)
FROM employee;

-- 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기
SELECT MAX(hiredate) , MIN(hiredate)
FROM employee;

-- 사원들의 커미션 총액 출력하기
SELECT SUM(commission) 
FROM employee;

-- 로우 개수 구하기
-- 전체 사원의 수 구하기
SELECT COUNT(*)
FROM employee;

-- 커미션을 받는 사원의 수 구하기
SELECT COUNT(commission) FROM employee;

-- 직업 종류의 개수 구하기
SELECT COUNT(DISTINCT job) FROM employee;

-- 그룹함수를 사용하는 경우 SELECT 절의 열 또는 표현식에 그룹함수가 아닌것을 포함시키면 에러가 발생한다.

-- 데이터 그룹 GROUP BY
-- 부서별로 평균 급여를 구해야 할 경우 GROUP BY 절을 사용
-- 소속 부서별 평균 급여를 부서번호와 함께 출력하기
SELECT dno "부서 번호", avg(salary) "급여평균"
FROM employee 
GROUP BY dno;

-- 그룹 함수는 GROUP BY 절 뒤에 어떤 칼럼 값을 기준으로 그룹함수를 적용해줄지 기술해주어야 한다.
-- GROUP BY 절 다음에는 칼럼의 별칭을 사용할 수 없고, 반드시 칼럼명을 기술해야 한다는 점 주의
-- GROUP BY 절에 명시하지 않은 칼럼을 SELECT 절에서 사용하면 오류가 발생한다.

-- 다중 칼럼을 이용하여 그룹별로 검색하기
SELECT dno, job, COUNT(*), sum(salary)
FROM employee
GROUP BY dno, job
ORDER BY dno, job;


/* HVING 절을 사용하여 표시할 그룹을 지정, 집계 정보를 기준으로 그룹 결과를 제한 할 수 있다.
그룹 함수의 결과 값 중 HAVING 절 다음에 지정한 조건에 TRUE인 그룹으로 결과를 제한한다.
*/
-- 부서별 급여 총액이 3000 이상인 부서의 번호와 부서별 급여 총액 구하기
SELECT dno, max(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

-- MANAGER를 제외하고 급여 총액이 5000 이상인 직급별 급여 총액 구하기
SELECT job, COUNT(*), SUM(salary)
FROM employee
WHERE job NOT LIKE '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);

-- 최고 급여 출력하기
SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

-- 혼자 해보기
-- 급여 최고액, 최저액, 총액 및 평균 급여 출력하기
SELECT MAX(salary) Maximum,
MIN(salary) Minimum,
SUM(salary) Sum,
ROUND(AVG(salary)) Avg
FROM employee;

-- 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균급여 출력하기
SELECT job job,
MAX(salary) Maximum,
MIN(salary) Minimum,
SUM(salary) Sum,
ROUND(AVG(salary)) Avg
FROM employee
GROUP BY job;