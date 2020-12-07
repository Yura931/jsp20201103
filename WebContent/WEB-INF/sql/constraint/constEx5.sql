-- 이미 만들어져 있는 테이블에 제약사항을 추가하거나, 제약사항 변경, 삭제

-- 제약 사항 추가
CREATE TABLE emp_copy
AS
SELECT * FROM employee;
--> 테이블 카피 시 제약사항은 카피되지 않음
SELECT * FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

CREATE TABLE dept_copy
AS
SELECT * FROM department;

drop table dept_copy;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY (dno);

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_dno_fk
FOREIGN KEY(dno) REFERENCES dept_copy(dno);

-- 책 (260p)
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;

--- 제약사항 삭제 -- 이름을 지정해 준 경우
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

-- SELECT문으로 table_name검색후 알맞은 이름으로 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007388;

-- dept_copy primary 제약사항 삭제
SELECT  * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK;  -- 외부키에 의해 참조 된 키, PRIMARY 키를 참조하게 해두었는데 PRIMARY키를 삭제하면 PRIMARY키가 아니게 되므로 참조하고 있는 FOREIGN 키를 먼저 삭제 한 후 삭제 가능

ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_FK; -- dept_copy테이블의 primary key를 참조하고 있는 foreign키를 먼저 삭제

-- primary키를 참조하고 있는 foreign키가 많을 경우 삭제방법

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE; 
--> primary key 이름을 작성하지 않아도 키워드만 작성해도 같은 쿼리, dept_copy의 primary key를 참조하고있는
-- foreign키를 다 삭제하고 싶을 때 CASCADE 키워드 추가

-- 혼자 해보기 --
-- employee 테이블의 구조를 복사하여 EMP_SAMPLE 이름의 테이블 생성
-- 사원 테이블의 사원번호 칼럼에 테이블 레벨로 primary key 제약조건을 지정, 
-- 제약 조건 이름은 my_emp_pk로 지정

CREATE TABLE emp_sample
AS
SELECT * FROM employee WHERE 1=0;

SELECT * FROM emp_sample;

SELECT * FROM user_constraints
WHERE table_name='EMP_SAMPLE';

ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_pk PRIMARY KEY(eno);

-- 부서 테이블의 부서번호 칼럼에 테이블 레벨로 primary key 제약 조건을 지정
-- 제약 조건 이름은 my_dept_pk로 지정
drop table  emp_sample;

CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 1=0;

ALTER TABLE dept_copy
ADD CONSTRAINT my_dept_pk PRIMARY KEY(dno);

-- 사원 테이블의 부서번호 칼럼에 존재하지 않는 부서의 사원이 배정되지 않도록
-- 외래 키 제약 조건을 지정, 제약 조건 이름은 my_emp_dept_fk로 지정
ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_dept_fk
FOREIGN KEY(dno) REFERENCES department(dno);

-- 사원 테이블의 커미션 칼럼에 0보다 큰 값만을 입력할 수 있도록
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_min CHECK (commission > 0);

