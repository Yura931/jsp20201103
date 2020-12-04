--
CREATE TABLE data_type_ex1
(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3, 2)
);
SELECT * FROM data_type_ex1;
INSERT INTO data_type_ex1
VALUES(1.23, 840);
INSERT INTO data_type_ex1(num3, num1, num2)
VALUES(1.23, 840, 98);
INSERT INTO data_type_ex1
VALUES(1, 50, 5.14);
INSERT INTO data_type_ex1(num1)
VALUES(0);
INSERT INTO data_type_ex1(num1)
VALUES(0.01);
INSERT INTO data_type_ex1(num1)
VALUES(9999999999999);
INSERT INTO data_type_ex1(num2)
VALUES(5.5);
INSERT INTO data_type_ex1(num2)
VALUES(99);
INSERT INTO data_type_ex1(num2)
VALUES(100);
INSERT INTO data_type_ex1(num3)
VALUES(0.01);
INSERT INTO data_type_ex1(num3)
VALUES(0.015); -- 소수점 두자리로 제한되어있기 때문에 반올림되어 데이터가 저장 됨
INSERT INTO data_type_ex1(num3)
VALUES(9.015); -- 반올림
INSERT INTO data_type_ex1(num3)
VALUES(10.015); -- 소수점 위로 한자리 수만 가능하기 때문에 값이 들어가지 않음
SELECT * FROM data_type_ex1;

commit;

-- 문자열
CREATE TABLE data_type_ex2
(
char1 CHAR(3),
vchar2 VARCHAR2(6)
);

INSERT INTO data_type_ex2
(char1) VALUES ('');
INSERT INTO data_type_ex2
(char1) VALUES ('a'); -- -> a는 1bytes를 차지하지만 데이터타입을 CHAR로 지정해 주었기 때문에 나머지 2bytes는 스페이스로 채워짐
INSERT INTO data_type_ex2
(char1) VALUES ('abc'); 
INSERT INTO data_type_ex2
(char1) VALUES ('abcd'); --> 정해준 타입의 길이와 맞지 않아 오류가 남

INSERT INTO data_type_ex2
(vchar2) VALUES ('abc'); --> VARCHAR2는 가변길이 이기 때문에 남은 길이를 공백으로 채우지 않음
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdef');
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdefg'); --> 정해준 길이보다 큰 값을 넣어 오류 뜸

INSERT INTO data_type_ex2
(vchar2) VALUES ('한');
INSERT INTO data_type_ex2
(vchar2) VALUES ('한글');
INSERT INTO data_type_ex2
(vchar2) VALUES ('한글날'); --> 한글은 한글자당 3bytes로 계산, 길이를 6bytes로 저장해두었기 때문에 세글자는 저장되지 않음
SELECT * FROM data_type_ex2;

commit;

-- 날짜
-- DATE 타입
CREATE TABLE data_type_ex3
(
date1 DATE
);

SELECT sysdate FROM dual;

INSERT INTO data_type_ex3
VALUES (sysdate);

INSERT INTO data_type_ex3
VALUES('2020/11/01'); -- 사용하는 버전에 따라 날짜 형식 다름, 스트링형식 

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10', 'YYYY-MM-DD')); --> 안전하게 스트링을 날짜로 변경해서 사용 가능
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:ss'));

SELECT * FROM data_type_ex3;
SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS')
FROM data_type_ex3;

commit;

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno
FROM employee
WHERE 0=1;

SELECT * FROM emp_copy;

DROP TABLE emp_copy;

INSERT INTO emp_copy
VALUES(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);

INSERT INTO emp_copy
VALUES(7000, 'CANDY', 'MANAGER', TO_DATE('2012/05/01', 'YYYY/MM/DD'), 10);

INSERT INTO emp_copy
VALUES (7010, 'TOM', 'MANAGER',
TO_DATE('2012,05,01', 'YYYY,MM,DD'), 20);

INSERT INTO emp_copy
VALUES (7020, 'JERRY', 'SALESMAN', SYSDATE, 30);

-- 혼자 해보기
-- EMP 테이블의 구조만 복사하여 EMP_INSERT란 이름의 빈 테이블을 만드시오.
CREATE TABLE emp_insert
AS
SELECT * FROM employee WHERE 1 = 0;

SELECT * FROM emp_insert;

-- 데이터 추가
INSERT INTO emp_insert
VALUES(1, 'YURA', 'STUDENT', null, sysdate, 2700, 230, 10);

-- EMP_INSERT 테이블에 옆 사람을 추가하되 TO_DATE 함수를 이용해서 입사일을 어제로 입력
INSERT INTO emp_insert
VALUES(1, 'HANGYUL', 'WORKERS', null, TO_DATE('2020/12/01', 'YYYY-MM-DD'),
2700, 230, 10);


DROP TABLE dept_copy;

-- 다른테이블의 데이터를 복사해올 수 있다.

CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0 = 1;
SELECT * FROM dept_copy;  -- 레코드가 없는 상태

INSERT INTO dept_copy
SELECT * FROM department; -- 선택된 레코드들이 바로 INSERT INTO문 테이블에 복사가 됨

commit;