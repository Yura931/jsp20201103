SELECT ename, dno
FROM employee
WHERE dno = (SELECT dno
             FROM employee
             WHERE ename='SCOTT');
            
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
                
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno -- 여기까지는 각 dno별로 최소 salary를 구한 것
HAVING MIN(salary) > (SELECT MIN(salary) -- HAVING 그룹함수를 사용했을 때 조건을 넣는 것
                      FROM employee
                      WHERE dno = 30); -- 30번 부서의 최소 봉급 보다 큰 봉급을 가진 부서의 번호,봉급을 구하는 쿼리

-- 다중 행 서브 쿼리 IN, ANY, SOME, ALL, EXIST
-- 쿼리가 여러 행을 가지게 될 경우 생각할 수 있는 연산자들

-- 1. IN ~에 포함되어있으면, ~중 하나이면
SELECT MIN(salary)
FROM employee
GROUP BY dno;

SELECT eno, ename, salary
FROM employee 
WHERE salary IN (SELECT MIN(salary)
                FROM employee
                GROUP BY dno); 
-- (950, 800, 1300); -- salayt가 950, 800, 1300 중 하나인

SELECT  eno, ename, salary, dno
FROM employee
WHERE(dno, salary) IN (SELECT dno, MIN(salary) -- IN연산자는 하나의 컬럼만이 아닌 두개의 컬럼에도 사용가능, 두 개의 컬럼이 일치해야 함
                        FROM employee
                        GROUP BY dno);

-- 2.ANY, SOME 같은 연산자, 같은 결과가 나옴 / 하나라도 있으면 true
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (1600, 1250, 1250, 1500); -- < 부등호와 같이 쓰이게 되면 최고값보다 작게되면 결과가 만족하게 됨
-- ANY다음 sub쿼리가 들어감, 결과는 여러 행이 올 수 있음

SELECT salary
FROM employee
WHERE job='SALESMAN';

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (SELECT salary
FROM employee
WHERE job='SALESMAN');

-- 3.ALL : 모두 만족해야 함
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL(SELECT salary 
               FROM employee
               WHERE job='SALESMAN')
AND job <> 'SALESMANN';
               

SELECT salary 
FROM employee
WHERE job='SALESMAN';

-- 사원번호가 7788인 사원 표시하기
SELECT eno, ename, job
FROM employee
WHERE job = (SELECT job
             FROM employee
             WHERE eno=7788); -- eno가 7788번인 사원의 job과 같은 job을 가지고 있는 사원

-- 사원번호가 7499인 사원보다 급여가 많은 사원을 표시(사원이름, 담당업무)
SELECT ename, job
FROM employee
WHERE salary > (SELECT salary
               FROM employee
               WHERE eno = '7499'); 

-- 최소 급여를 받는 사원의 이름, 담당업무 및 급여를 표시하시오.(그룹함수 사용)
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
                
-- 평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여를 표시하시오.
SELECT job, ROUND(AVG(salary),1)
FROM employee
GROUP BY job
HAVING ROUND(avg(salary), 1) = (SELECT MIN(ROUND(AVG(salary), 1))
                                FROM employee
                                GROUP BY job);

-- 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표시
SELECT ename, salary, dno
FROM employee
WHERE salary IN (SELECT MIN(salary)
                FROM employee
                GROUP BY dno);

-- 담당 업무가 분석가(ANALYST)인 사원보다 급여가 적으면서 업무가 분석가(ANALYST)가
-- 아닌 사원들을 표시
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY(SELECT salary
                   FROM employee
                   WHERE job='ANALYST')
AND job<>'ANALYST';

-- 부하직원이 없는 사원의 이름을 표시
SELECT ename
FROM employee
WHERE eno IN(SELECT eno
             FROM employee
             WHERE manager is NULL);
             
-- 부하직원이 있는 사원 표시
SELECT ename
FROM employee
WHERE eno IN(SELECT eno
            FROM employee
            WHERE manager IS NOT null);
            
-- BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의
SELECT ename, hiredate
FROM employee
WHERE dno = (SELECT dno
            FROM employee
            WHERE ename='BLAKE')
AND ename<>'BLAKE';            
           
-- 급여가 평균 급여 보다 많은 사원들의 사원번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬
SELECT eno, ename
FROM employee
WHERE salary > (SELECT AVG(salary)
                FROM employee)
ORDER BY salary asc;

-- 이름에 K가 포함된 사원과 같은 부서에서 일하는 사원의 사원번호와 이름을 표시
SELECT eno, ename
FROM employee
WHERE dno in (SELECT dno
             FROM employee
             WHERE ename LIKE '%K%');
             
-- 부서 위치가 DALLAS인 사원의 이름과 부서번호 및 담당업무를 표시
SELECT ename, dno, job
FROM employee
WHERE dno = (SELECT dno
             FROM department
             WHERE loc = 'DALLAS');
             
-- KING에게 보고하는 사원의 이름과 급여를 표시
SELECT ename, salary
FROM employee
WHERE manager = (SELECT eno
                FROM employee
                WHERE ename = 'KING');
                
-- RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당업무를 표시
SELECT eno, ename, job
FROM employee
WHERE dno = (SELECT dno
            FROM department
            WHERE dname = 'RESEARCH');
                
-- 평균 급여 보다 많은 급여를 받고 이름에 M이 포함된 사원과 같은 부서에서 근무하는 사원의 사원번호, 이름, 급여를 표시
SELECT eno, ename, salary
FROM employee
WHERE salary > (SELECT avg(salary)
                FROM employee)
AND dno IN(SELECT dno                
           FROM employee
           WHERE ename LIKE '%M%');

-- 평균 급여가 가장 적은 업무
SELECT job, avg(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
                FROM employee
                GROUP BY job);
                
-- 담당 업무가 MANAGER인 사원이 소속된 부서와 동일한 부서의 사원을 표시
SELECT eno, dno, job, ename
FROM employee
WHERE eno IN (SELECT manager
             FROM employee)
ORDER BY eno;
