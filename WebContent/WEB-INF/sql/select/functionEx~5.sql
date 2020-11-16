-- date to char
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- 예제 날짜 함수 사용하기
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM'),
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;

-- 현재 날짜와 시간 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM dual;

-- number to char 
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(456789, '999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
-- 자릿수가 다 채워지지 않으면 0으로 조합해서 사용
SELECT TO_CHAR(9956789, 'L999,999,999.000') FROM dual;
-- 통화기호, 소수점

-- 급여를 출력하면서 통화 기호 덧붙이기
SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;

SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;

SELECT 
TO_CHAR(
TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS')
, 'YYYY-MM-DD HH:MI:SS')
FROM dual;

-- char to number 
SELECT TO_NUMBER('200,000', '999,999') FROM dual;
SELECT TO_NUMBER('200000') FROM dual;

-- 예제 1981 2월 20일에 입사한 사원 검색하기 
SELECT ename, hiredate FROM employee
WHERE hiredate=198119229;

SELECT ename, hiredate
FROM employee
WHERE hiredate=TO_DATE('1981-02-20', 'YYYY-MM-DD');

-- 예제 숫자 형태의 문자 빼기
SELECT '100,000 - 50,000'
FROM dual;

-- 수치 형태로 변환 후 빼기
SELECT TO_NUMBER('100,000', '999,999')
- TO_NUMBER('50,000', '99,999') 
FROM dual;

-- 혼자 해보기 --
-- SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력
SELECT SUBSTR(HIREDATE, 1, 2) 년도,
SUBSTR(HIREDATE, 4, 2) 달
FROM employee;

-- SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력하시오.
SELECT * FROM employee
WHERE SUBSTR(HIREDATE, 4, 2) = '04';

-- MOD 함수를 사용하여 사원번호가 짝수인 사람만 출력하시오.
SELECT * FROM employee
WHERE MOD(eno, 2) = 0;

-- 입사일을 연도는 2자리(YY), 월은 숫자(MON)로 표시하고 요일은 약어(DY)로 지정하여 출력하시오.
SELECT HIREDATE, TO_CHAR(HIREDATE,'YY/MON/DY')
FROM employee;

-- 올해 며칠이 지났는지 출력하시오. 현재 날짜에서 올해 1월 1일을 뺀 결과를 출력하고
-- TO_DATE 함수를 사용하여 데이터 형을 일치 시키시오
SELECT TRUNC(SYSDATE - TO_DATE('2011/01/01',  'YYYY/MM/DD'))
FROM dual;