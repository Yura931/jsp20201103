SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee; 
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS 연봉 FROM employee;
SELECT ename, salary, salary*12 연봉 FROM employee;

-- 한줄 주석
 /*
    여러줄 주석
 */
 SELECT * FROM employee;
 SELECT ename, salary, commission, salary + commission FROM employee;
 SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
 SELECT ename, salary + NVL(commission, 0) FROM employee;
 SELECT ename, salary + NVL(commission, 0) 합 FROM employee;

-- 전체 사원 출력하기
select * from employee;

-- 사원번호와 사원명만 출력하기
select eno, ename from employee;

-- 연봉 구하기
select ename, salary, salary*12 from employee;

-- 커미션을 더한 연봉 구하기
select ename, salary, job, dno, commission, salary*12, salary*12+commission from employee;

-- nvl 함수 사용하기
select ename, salary, job, dno, nvl(commission, 0), salary *12, salary*12 + nvl(commission, 0) from employee;

-- 칼럼명에 별칭 지정하기
select ename, salary*12+nvl(commission,0) 연봉 from employee;

-- 칼럼명과 별칭 사이에 AS 추가하기
select ename, salary*12+nvl(commission,0) as 연봉 from employee;

-- ""로 별칭 지정하기
select ename, salary*12+nvl(commission,0) "연 봉" from employee;

SELECT dno FROM employee;

SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;
