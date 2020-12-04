-- TABLE 이름 변경
-- RENAME
RENAME dept20 TO emp20;
DESC dept20;
DESC emp20;
SELECT * FROM emp20;

-- TABLE 제거
-- DROP TABLE
-- 회사에서 이 명령문을 사용하게 된다면 반나절 이상 고민한 다음에 사용하자
DROP TABLE emp20; 
DESC emp20;

-- TABLE의 데이터만 삭제
-- TRUNCATE TABLE
-- 이 명령문도 반나절은 고민해보자 ..
TRUNCATE TABLE dept_second;

-- 혼자 해보기
-- 다음 표에 명시된 대로 DEPT 테이블을 생성
DROP TABLE dept;

CREATE TABLE dept (
dno NUMBER(2),
dname VARCHAR2(14),
loc VARCHAR2(13));

-- 다음 표에 명시된 대로 EMP 테이블을 생성
DROP TABLE emp;
CREATE TABLE emp (
eno NUMBER(4),
ename VARCHAR2(10),
dno NUMBER(2));

-- 긴 이름을 저장할 수 있도록 EMP 테이블을 수정(ENAME 칼럼의 크기)
ALTER TABLE emp
MODIFY ename VARCHAR2(25);
DESC emp;

-- EMPLOYEE 테이블을 복사해서 EMPLOYEE2란 이름의 테이블을 생성하되
-- 사원번호, 이름, 급여, 부서번호 칼럼만 복사하고
-- 새로 생성된 테이블의 칼럼명은 각각 EMP_ID, NAME, SAL, DEPT_ID로 지정
CREATE TABLE employee2(emp_ID, name, sal, dept_id)
AS
SELECT eno, ename, salary, dno FROM employee;
DESC employee2;

-- EMP테이블 삭제
DROP TABLE emp;

-- EMPLOYEE2 -> EMP로 이름 변경
RENAME employee2 TO emp;

-- DEPT 테이블에서 DNAME 칼럼 제거
ALTER TABLE dept
DROP COLUMN dname;
DESC dept;
