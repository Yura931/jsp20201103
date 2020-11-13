SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate 
FROM employee;

SELECT ename, hiredate, ROUND(sysdate - hiredate) 
FROM employee;

-- 현재 날짜 표시하기
SELECT sysdate FROM dual;

-- 날짜 계산하기
SELECT sysdate -1 어제,
    sysdate 오늘,
    sysdate +1 내일
FROM dual;

-- 근무일수 계산하기
SELECT ename, ROUND(sysdate - hiredate) 근무일수
FROM employee;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

-- 예제 특정 날짜(DATE)에서 월(MONTH)을 기준으로 버림한 날짜 구하기
SELECT hiredate, TRUNC(HIREDATE, 'MONTH') AS 버림날짜 FROM employee;

SELECT MONTHS_BETWEEN(SYSDATE, hiredate) FROM employee;

SELECT 
MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd'))
FROM dual;

SELECT
MONTHS-BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE)
FROM dual;

-- 예제 각 사원들이 근무한 개월 수 구하기
SELECT ename, sysdate, hiredate,
TRUNC(MONTHS_BETWEEN (SYSDATE,HIREDATE))
FROM employee;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

-- 예제 입사한지 6개월 지난 날짜 구하기
SELECT ename, hiredate,
ADD_MONTHS(HIREDATE, 6) FROM employee;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

SELECT * FROM employee;

SELECT LAST_DAY(sysdate) FROM dual;

SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;

-- 오늘을 기준으로 최초로 도래하는 토요일 구하기
SELECT SYSDATE,
NEXT_DAY(SYSDATE, '토요일') FROM dual;

SELECT ename, hiredate,
LAST_DAY(HIREDATE)
FROM employee;