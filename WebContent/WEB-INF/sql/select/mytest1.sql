-- BETWEEN 연산자 : 하한값과 상한값 사이에 포함되는 로우를 검색
SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 1500;

SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- NOT연산자 사용
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

SELECT * FROM employee
WHERE salary > 1000 OR salary < 1500;

-- IN 연산자
SELECT * FROM employee
WHERE commission IN(300, 500, 1400); -- 300 OR 500 OR 1400과 같은 쿼리

-- <> 연산자
SELECT * FROM employee
WHERE commission <>300 AND commission<>500 AND commission<>1400;

-- NOT IN연산자
SELECT *FROM employee
WHERE commission NOT IN(300, 500, 1400);

-- LIKE 연산자와 와일드 카드
SELECT * FROM employee
WHERE ename LIKE 'F%';

SELECT * FROM employee
WHERE ename LIKE '%M%';

SELECT * FROM employee
WHERE ename LIKE '%N';

SELECT * FROM employee
WHERE ename LIKE '_A%';

SELECT * FROM employee
WHERE ename NOT LIKE '%A%';

-- IS NULL연산자로 NULL 조회
SELECT * FROM employee
WHERE commission IS NULL;

SELECT * FROM employee
WHERE commission IS NOT NULL;

-- ORDER BY
SELECT * FROM employee
ORDER BY salary asc;

SELECT * FROM employee
ORDER BY eno desc;

SELECT * FROM employee
ORDER BY ename;

SELECT * FROM employee
ORDER BY hiredate desc;

SELECT * FROM employee
ORDER BY salary asc, ename desc;

-- 급여 $300 인상하기
SELECT ename, salary, salary + 300
FROM employee;

-- 총수입 순(수입이 많은 것부터 작아지도록)으로 출력
SELECT ename, salary, salary * 12 + 100
FROM employee
ORDER BY salary*12+100 desc;

-- 급여가 2000을 넘늠 사원의 이름과 급여를 급여가 많은 것부터 작은 순으로
SELECT ename, salary
FROM employee
WHERE salary >= 2000
ORDER BY salary desc;

-- 사원번호가 7788인 사원의 이름과 부서번호를 출력
SELECT ename, dno
FROM employee
WHERE eno = 7788;

-- 급여가 2000에서 3000 사이에 포함되지 않는 사원의 이름과 급여 출력
SELECT ename, salary
FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 이름, 담당 업무, 입사일 출력
SELECT ename, job, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 부서 번호가 20 및 30에 속한 사원의 이름과 부서번호를 출력
-- 이름을 기준(내림차순)으로 영문자순으로 출력
SELECT ename, dno
FROM employee
WHERE dno IN(20, 30)
ORDER BY ename desc;

-- 사원의 급여가 2000에서 3000 사이에 포함되고
-- 부서번호가 20 또는 30인 사원의 이름, 급여와 부서번호를 출력하되 이름순으로 출력
SELECT ename, salary, dno
FROM employee
WHERE salary BETWEEN 2000 AND 3000
AND dno IN(20, 30)
ORDER BY ename;

-- 1981년도에 입사한 사원의 이름과 입사일을 출력(LIKE 연산자와 와일드카드 사용)
SELECT ename, hiredate
FROM employee
WHERE hiredate LIKE '81%';

-- 관리자가 없는 사원의 이름과 담당 업무 출력
SELECT ename, job
FROM employee
WHERE manager IS NULL;

-- 커미션을 받을 수 있는 자격이 되는 사원의 이름, 급여, 커미션을 출력
-- 급여 및 커미션을 기준으로 내림차순 정렬
SELECT ename, salary, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY salary, commission desc;

-- 이름의 세 번째 문자가 R인 사원의 이름을 표시
SELECT ename
FROM employee
WHERE ename LIKE '__R%';

-- 이름에 A와 E를 모두 포함하고 있는 사원의 이름
SELECT ename
FROM employee
WHERE ename LIKE '%A%' 
AND ename LIKE '%E%';

-- 담당 업무가 사무원(CLERK) 또는 영업사원(SALESMAN)이면서
-- 급여가 $1600, $950, $1300이 아닌 사원의 이름, 담당업무, 급여 출력
SELECT ename, job, salary
FROM employee
WHERE salary NOT IN(1600, 950, 1300)
AND job IN('CLERK', 'SALESMAN');

-- 커미션이 $500 이상인 사원의 이름과 급여 및 커미션
SELECT ename, commission
FROM employee
WHERE commission >= 500;

-- 대소문자 변환함수
SELECT 
UPPER(ename), -- 대문자
LOWER(ename), -- 소문자
INITCAP(job) -- 첫글자만 대문자 , SELECT문에서 정보조회시 대,소문자 구분이 필요할 때
FROM employee;

SELECT LOWER(ename)
FROM employee
WHERE LOWER(ename)='scott'; -- WHERE절에서 대,소문자를 변경해 정보를 조회하고 싶을떄

SELECT INITCAP(ename)
FROM employee
WHERE INITCAP(ename)='Scott';

-- 문자 길이를 반환하는 함수
SELECT ename, job, LENGTH(job) -- 문자의 길이를 구하는 함수, 영어와 한글 모두 1byte로 처리된다.
FROM employee
WHERE INITCAP(ename)='Scott';

-- 문자 결합하기
SELECT CONCAT(dno, ename)
FROM employee;

SELECT '강한결','바보', CONCAT('강한결', '바보')
FROM dual;

-- 문자열의 일부분만 추출하기
SELECT SUBSTR('ABCDEFG',3,4)
FROM dual;

-- 이름이 N으로 끝나는 사원 표시하기
SELECT *
FROM employee
WHERE SUBSTR(ename, -1, 1) = 'N';

-- 87년도에 입사한 사원 표시하기
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 3, 2) = '87';

SELECT * FROM employee;

SELECT INSTR('Oracle mania','a',5,2) --> 문자열의 5번째부터 두번째로 발견되는 'a'의 위치
FROM dual;

-- 이름의 세 번째 자리가 'R'인 사원을 검색하는 쿼리문
SELECT *
FROM employee
WHERE INSTR(ename, 'R', 3, 1) = 3; -- ename의 3번째 인덱스문자에서 'R'이 1번째로 발견된 인덱스번호 가 3 인 경우, 세번째에 R이 오게 되는 것

SELECT ename
FROM employee
WHERE INSTR(ename, 'S') > 0;

-- 숫자함수
-- 반올림하기
SELECT salary, salary * 7.8876678896443 ,ROUND(salary * 7.8876678896443, 2)
FROM employee; --> ROUND(실수 , 자릿수) 자릿수의 길이만큼 소수점을 나타내고 값이 2면 3번째자리 수가 반올림되어 2자리만 나타낸다.

SELECT salary, salary * 1.111111, ROUND(salary * 1.111111, -1) 
FROM employee; --> 자릿수를 나타내는 값이 음수이면 -1부터 일의자리 반올림부터 거스러 올라가게 된다. 소수점은 이전 자리에서 반올림이 되었지만, 인자값이 양수일 때와 달리 해당 자리에서 반올림이 일어나게 된다.

-- 잘라내기
SELECT 98.7654, TRUNC(98.7654), TRUNC(98.7654,2), TRUNC(98.7654,-1)
FROM dual; --> 두번째 인자값이 생략될 경우 0으로 인식하여 일의자리까지 남기고 소수점 이하자리는 모두 버린다.
--> 2이면 소수점 이하 두 번째까지 나기고 세 번째 자리부터 버린다.
--> -1인 경우는 일의 자리에서부터 버림 연산을 한다.

-- 나머지 반환
SELECT MOD(21, 3), MOD(31, 5), MOD(45, 10)
FROM dual;
--> 첫 번째 값을 두 번째 값으로 나눈 나머지를 반환한다.

-- 모든 사원의 급여를 500으로 나눈 나머지를 계산
SELECT ename, MOD(salary, 500)
FROM employee;

-- 날짜 함수
-- 오라클 숫자형식 : 년, 월, 일, 시, 분, 초 형태

-- 현재날짜 표시하기
SELECT sysdate
FROM dual;

-- 날짜에 숫자를 더하거나, 빼서 날짜를 계산할 수 있다.
-- 날짜형 데이터에 숫자를 더하면 (날짜+숫자) 날짜로부터 숫자만큼 지난 날짜를 계산
-- 빼면 (날짜-숫자) 날짜로부터 숫자만큼 이전 날짜를 계산
-- 날짜에서 다른 날짜를 빼면 일수를 구할 수 있다.
-- 시간을 24로 나누어 날짜에 시간을 더할 수 있다.

-- 날짜 계산하기
SELECT SYSDATE-1 어제,
       SYSDATE 오늘,
       SYSDATE+1 내일
FROM dual;

-- 사원들의 근무일수 계산
SELECT ROUND(SYSDATE-hiredate) 근무일수
FROM employee;
        
-- 특정 날짜(DATE)에서 월(MONTH)을 기준으로 버림한 날짜 구하기
SELECT hiredate, TRUNC(hiredate, 'MONTH')
FROM employee;

SELECT hiredate, ROUND(hiredate, 'MONTH')
FROM employee;

-- 각 사원들이 근무한 개월 수 구하기
SELECT ename, sysdate, hiredate,
    TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) -- 날짜와 날짜 사이의 개월수를 구하는 함수 MONTHS_BETWEEN(날짜,날짜)
FROM employee;

SELECT ename, sysdate, hiredate,
    ADD_MONTHS(hiredate, 6) -- 특정 개월수를 더한 날짜를 구하는 함수
FROM employee;    

-- 오늘을 기준으로 최초로 도래하는 토요일 구하기
SELECT SYSDATE,
    NEXT_DAY(SYSDATE,'토요일') -- date보다 이후 날짜에서 지정한 요일에 해당되는 날짜를 찾는다, 요일은 숫자로도 표현가능 월요일부터 1... 7까지 입력 가능
FROM dual;    

-- 입사한 달의 마지막 날 구하기
SELECT ename, hiredate,
    LAST_DAY(HIREDATE) -- 해당 날짜가 속한 달의 마지막 날짜를 반환, 마지막날이 28, 29일이 되는 2월달에 사용하면 효율적
FROM employee;    


-- 형 변환 함수 --
-- TO_CHAR 날짜나 숫자를 문자로 변환

-- 사원들의 입사일에서 입사년도와 월만 출력하거나 입사일을 출력하되 요일까지 함께 출력
SELECT ename, hiredate,
    TO_CHAR(HIREDATE, 'YY-MM'),
    TO_CHAR(HIREDATE, 'YYYY/MM/DD DY')
FROM employee;    

-- 현재 날짜와 시간 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM dual;

-- AM, PM시간 출력
SELECT TO_CHAR(SYSDATE, 'YY/MM/DD, PMHH:MI:SS')
FROM dual;

-- 급여를 출력하면서 통화 기호 덧붙이기
SELECT ename, TO_CHAR(salary, 'L999,999') -- 급여에 통화기호를 붙이는 L키워드 사용, 9는 숫자의 자릿수를 나타날 때 사용할 수 있으며, 자릿수가 맞지않아도 채우지 않는다.
FROM employee;

-- 1981년 2월 20일에 입사한 사원 검색
SELECT ename, hiredate
FROM employee
WHERE hiredate=19810220; -- WHERE절의 19810220은 NUMBER타입 이기 때문에 DATE타입인 hiredate 조건을 인식하지 못한다.

-- 날짜형으로 변환하기
SELECT ename, hiredate
FROM employee
WHERE hiredate=TO_DATE(19810220, 'YYYY/MM/DD'); -- WHERE절의 hiredate를 날짜로 인식할 수 있도록 TO_DATE를 사용해 변환해 준다.

-- 숫자 형태의 문자 빼기
SELECT'100,000'-'50,000' --'100,000'과 '50,000'은 문자형이기 때문에 산술연산을 수행하지 못하고 오류가 발생한다.
FROM dual; 

-- 수치 형태로 변환 후 빼기 [형식 : TO_NUMBER(date, 형식)]
SELECT TO_NUMBER('100,000','999,999')  
     - TO_NUMBER('50,000', '999,999')
FROM dual;     

-- 일반 함수 --
-- NULL 값 처리
SELECT NVL(commission, 0), -- 첫번째 인자값이 NULL일 경우 두번째 인자값으로 변환해 계산에 참여하게 된다.
NVL(hiredate, '2011/5/10'),
NVL(job,'MANAGER')
FROM employee;

-- NVL로 NULL 값 처리하기
SELECT ename, salary, commission,
        NVL(commission, 0),
        salary * 12 + NVL(commission,0)
FROM employee
ORDER BY job;

-- NVL2로 NULL 값 처리하기
SELECT ename, salary, commission,
        NVL2(commission, salary * 12 + commission, salary * 12)
FROM employee
ORDER BY job;

-- NULLIF로 NULL 값 처리하기
SELECT NULLIF('A','A'), NULLIF('A','B') -- 두 표현식을 비교하여 동일한 경우에는 NULL을 반환하고 동일하지 않으면 첫 번째 표현식을 반환한다.
FROM dual;

-- COALESCE로 NULL 값 처리하기
SELECT ename, commission, salary,
    COALESCE(commission, salary, 0) -- 세 인수 중 NULL이 아닌 첫번째 인수를 반환
FROM employee
ORDER BY job;

-- DECODE로 부서이름 출력하기
SELECT ename, dno,
    DECODE(dno, 10, 'ACC', -- 첫번 째 표현식의 조건에 일치하는 결과를 반환하는 함수, switch case문과 같은 기능을 갖는다.
                20, 'RES',
                30, 'SAL',
                40, 'OPE',
                    'DEF') AS DNAME -- DNAME 별칭을 갖는 새 컬럼 생성
FROM employee
ORDER BY dno;

SELECT dname, dno
FROM department;

-- CASE로 부서이름 출력하기
SELECT ename, dno,
        CASE WHEN dno=10 THEN 'ACC' -- if else문과 유사, WHEN의 값이 일치하면 THEN의 값을 반환
             WHEN dno=20 THEN 'RES'
             WHEN dno=30 THEN 'SAL'
             WHEN dno=40 THEN 'OPE'
             ELSE 'DEF' -- 위의 조건이 모두 맞지 않은 경우 ELSE 다음 기술한 결과를 반환, 기본 결과가 명시되어있지 않을 경우 NULL을 반환한다.
        END AS DNAME -- END로 종료
FROM employee
ORDER BY dno;

-- 혼자 해보기 --
-- SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력
SELECT SUBSTR(hiredate, 3,2) 년도,
       SUBSTR(hiredate, 6,2) 달 -- YYYY/MM/DD 형식에서 /인덱스도 생각
FROM employee;       
             
-- SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 6,2) = '04';

-- MOD 함수를 사용하여 사원번호가 짝수인 사람만 출력
SELECT *
FROM employee
WHERE MOD(eno,2) = 0;

-- 입사일을 연도는 2자리(YY), 월은 숫자(MON)로 표시하고 요일은 약어(DY)로 지정하여 출력
SELECT hiredate,
       TO_CHAR(hiredate, 'YY/MON/DY')
FROM employee;       

-- 올해 며칠이 지났는지 출력, 현재날짜에서 올해 1월 1일을 뺀 결과를 출력하고 TO_DATE함수를 사용하여 데이터 형을 일치
SELECT 
       TRUNC(SYSDATE - TO_DATE(20200101, 'YYYY/MM/DD'))
FROM dual;      

-- 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL값 대신 0으로 출력
SELECT eno, ename,
    NVL2(manager,manager,0)
FROM employee;    

-- DECODE 함수로 직급에 따라 급여를 인상하도록 하시오
SELECT eno, ename, job, salary,
    DECODE(job, 'ANALYST', salary + 200,
                'SALESMAN', salary + 180,
                'MANAGER', salary + 150,
                'CLERK', salary + 100,
                salary) AS UPDATE_SALARY
FROM employee;                

-- 그룹함수 --
-- 그룹 함수는 테이블의 전체 데이터에서 통계적인 결과를 구하기 위해서
-- 행 집합에 적용하여 하나의 결과를 생산
-- 그룹함수는 하나 이상의 행을 그룹으로 묶어 연산하여 총합,평균 등 하나의 결과를 구함

-- 숫자데이터를 저장하는 칼럼에 대해 SUM, AVG, MIN, MAX 함수를 사용할 수 있다.
SELECT SUM(salary) ,ROUND(AVG(salary)), MAX(salary), MIN(salary)
FROM employee;

-- MIN, MAX 함수는 숫자 데이터 이외에 다른 모든 데이터 유형에 사용할 수 있다.
-- 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력
SELECT MAX(hiredate), MIN(hiredate)
FROM employee;

-- 그룹함수와 NULL
-- 사원들의 커미션 총액 출력
SELECT SUM(commission) FROM employee; --> 그룹함수는 NULL값을 제외하고 연산, 칼럼에 NULL이 있어도 연산 결과가 NULL이 되지 않는다.

-- 전체 사원의 수 구하기
SELECT COUNT(*)
FROM employee;

-- 커미션을 받는 사원 수 
SELECT COUNT(commission) -- COUNT함수는 NULL값에 대해서는 값을 세지 않는다.
FROM employee; -- WHERE절에 commission IS NOT NULL을 추가한 것과 결과가 같다.

SELECT COUNT(*)
FROM employee
WHERE commission IS NOT NULL;

-- 직업종류 개수 출력
SELECT COUNT(job)
FROM employee; -- 중복된 행까지 카운팅 해서 값이 출력 됨

SELECT COUNT(DISTINCT job) -- DISTINCT 키워드 사용으로 중복된 값 제거
FROM employee;

-- 그룹 함수를 사용하는 경우 SELECT 절의 열, 또는 표현식에 그룹함수가 아닌 컬럼 포함 시 에러 발생
SELECT ename, max(salary) -- 그룹함수의 결과 값은 하나의 행에 출력되는데 그룹함수를 적용하지 않은 ename 칼럼은 14개이기 때문에 매치시킬 수 없어 에러가 발생한다.
FROM employee;

-- 데이터 그룹 : GROUP BY
-- 특정 칼럼을 기준으로 그룹별로 나눌 경우 : 부서별로 평균 급여를 구해야 하는 경우 사용

-- 소속 부서별 평균 급여를 부서번호와 함께 출력
SELECT dno, ROUND(AVG(salary))
FROM employee 
GROUP BY dno; -- 소속 부서별로 그룹핑, GROUP BY절 뒤에 오는 컬럼명은 별칭사용이 불가능, 반드시 칼럼명 기술 해야 함
--> 그룹별 출력 순서는 그룹핑한 결과 값에 대해서 오름차순으로 정렬 됨
--> GROUP BY절에서 명시한 칼럼명은 SELECT 절에 기술 가능하다.

-- 다중 칼럼을 이용하여 그룹별로 검색
SELECT dno, job, COUNT(*), SUM(salary) 
FROM employee
GROUP BY dno, job --> GROUP BY 절 다음에 하나 이상의 열을 나열하여 그룹을 나누면 그룹 및 하위 그룹으로 결과를 반환한다.
--> 부서번호를 기준으로 그룹화 한 다음, 해당 부서 번호 그룹 내에서 직급을 기준으로 다시 그룹화 한것
ORDER BY dno, job;
--> 검색할 칼럼 : 부서번호와 직급, 지정된 그룹 내의 모든 급여 합계

-- 그룹 결과 제한 : HAVING 절
-- HAVING 절을 사용하여 표시할 그룹을 지정하여 집계 정보를 기준으로 그룹 결과를 제한 할 수 있다.
-- 그룹 함수의 결과 값 중 HAVING 절 다음에 지정한 조건에 true인 그룹으로 결과를 제한한다.

-- 부서별 급여 총액이 3000 이상인 부서의 번호와 부서별 급여 총액 구하기
SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT ename, dno ,salary
FROM employee
ORDER BY dno;

-- MANAGER를 제외하고 급여 총액이 5000 이상인 직급별 급여 총액 구하기
SELECT job, count(*), SUM(salary) 
FROM employee
WHERE job NOT LIKE '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);
--> WHERE절을 먼저 사용해 MANAGER직급 제외
--> 직급별(job)로 결과값을 얻기 위해 GROUP BY절에 기술
--> HAVING 조건을 걸어 그룹 함수 결과 제한

-- 부서별 최고급여 평균 출력
SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno; 

-- 혼자 해보기 --
-- 모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여를 출력, 평균은 정수로 반올림
SELECT COUNT(*), MAX(salary), MIN(salary),
       SUM(salary), ROUND(AVG(salary))
FROM employee;

-- 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균액 출력, 평균은 정수로 반올림
SELECT job, MAX(salary), MIN(salary),
       SUM(salary), ROUND(AVG(salary))
FROM employee
GROUP BY job;

-- COUNT(*) 함수를 이용하여 담당 업무가 동일한 사원 수 출력
SELECT job, COUNT(*)
FROM employee
GROUP BY job;

-- 관리자 수를 나열 
SELECT COUNT(manager)
FROM employee;

-- 급여 최고액, 급여 최저액의 차액을 출력
SELECT MAX(salary) - MIN(salary) difference
FROM employee;

-- 직급별 사원의 최저 급여를 출력, 
-- 관리자를 알 수 없는 사원 및 최저 급여가 2000 미만인 그룹은 제외, 
-- 결과를 급여에 대한 내림차순으로 정렬
SELECT job, MIN(salary)
FROM employee
GROUP BY job
HAVING MIN(salary) > 2000
ORDER BY MIN(salary) desc;

-- 각 부서에 대해 부서번호, 사원수, 부서 내의 모든 사원의 평균 급여를 출력, 
-- 평균 급여 소수점 둘쨰자리로 반올림
SELECT dno, COUNT(*) 사원수, ROUND(AVG(salary) ,2) 평균급여
FROM employee
GROUP BY dno
ORDER BY dno;

-- 각 부서에 대해 부서번호 이름, 지역명, 사원수, 부서내의 모든 사원의 평균 급여를 출력
-- 평균 급여는 정수로 반올림
SELECT decode(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') as "dname",
       decode(dno, 10, 'NEW YORK',
                   20, 'DALLAS',
                   30, 'CHICAGO',
                   40, 'BOSTON') as "location",
      COUNT(*) as "Number of People",
      ROUND(AVG(salary)) as "Salary"
FROM employee
GROUP BY dno;

-- 업무를 표시한 다음 해당 업무에 대해 부서번호별 급여 및 
-- 부서 10, 20, 30 의 급여 총액을 각각 출력

SELECT job,count(job), dno,
        DECODE(dno, 10, SUM(salary)) 부서10, 
        DECODE(dno, 20, SUM(salary)) 부서20,
        DECODE(dno, 30, SUM(salary)) 부서30,
        SUM(salary)
FROM employee
GROUP BY job, dno
ORDER BY dno;
                   
SELECT dno, job, salary
FROM employee
ORDER BY dno;

-- 테이블 조인하기 --
-- 여러 테이블에 저장된 데이터를 한 번에 조회해야 할 필요가 있을 때 사용
-- 사원 번호가 7788인 사원의 이름과 소속 부서명을 출력하려고 한다면 
-- 먼저 사원 테이블에서 사원의 이름과 소속 부서번호를 얻어온다.
-- 사원 테이블에는 사원이 소속되어있는 부서번호만 있을 뿐이기 때문에 부서명은 부서 테이블에서 얻어와야 한다.

SELECT dno
FROM employee
WHERE eno = 7788;

SELECT dname
FROM department
WHERE dno=20;

SELECT * FROM department, employee;
--> 카다시안 곱(Cartesian Product) 조인 조건을 생략한 경우 행의 모든 조합을 표시하는 카디시안 곱이 생성됨
--> Cartesian Product의 결과로 얻어지는 칼럼 수는 사원 테이블의 칼럼 수(8)와 부서 테이블의 칼럼 수(3)를 더한 것이므로 11이 된다.
--> 로우 수는 사원 한 명에 대해서 department 테이블에 있는 4개의 로우와 결합되기 때문에 56개(14*4)가 된다.




