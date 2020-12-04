-- table 만들기
-- CREATE TABLE

CREATE TABLE table1 (
col1 NUMBER(3, 1), -- 수 3의 길이를 갖고 소수 밑 1자리를 갖음
col2 VARCHAR2(6), -- 최대 6개의 바이트를 표현, 가변길이 6bytes까지
col3 CHAR(4), -- 4개의 문자를 표현, 고정길이 문자열 4bytes
col4 DATE -- 날짜시간
);

SELECT * FROM table1;

DESC table1; -- 테이블의 각 컬럼이 어떤 이름을 가지고 있고, 어떤 타입을 가지고 있는지 나옴

SELECT *
FROM department;

CREATE TABLE dept(
    dno NUMBER(2), -- 1~99까지의 수를 가질 수 있는 것
    dname VARCHAR2(14), -- 14bytes 영문자로는 14개의 문자, 한글은 byte수가 더 크기 때문에 더 적게 들어감
    loc VARCHAR2(13)); -- 13bytes 영문자는 13개의 character가 들어감
    
SELECT * FROM dept;
DESC dept;

CREATE TABLE dept_second
AS
SELECT *
FROM department;

DESC dept_second;

SELECT * FROM dept_second;

-- 20번 부서 소속 사원에 대한 정보를 포함한 DEPT20 테이블 생성
CREATE TABLE dept20
AS
SELECT eno, ename, salary * 12 annsal
FROM employee
WHERE dno = 20;
-- employee테이블에 있는 것을 복사해서 만든 것

DESC dept20; -- annsal컬럼은 employee의 NUMBER(7,2)타입에서 NUMBER타입으로 바뀜, 12를 곱한 수이기 때문에 무한히 넣을 수 있도록하려고

DESC employee; 

CREATE TABLE dept_forth
AS
SELECT dno, dname
FROM department
WHERE 0=1; -- 0=1은 항상 false이기 때문에 아무것도 선택되지 않음

SELECT * FROM department;
SELECT * FROM dept_forth; -- dno, dname 칼럼만 만들어지고 데이터는 복사되지 않음

