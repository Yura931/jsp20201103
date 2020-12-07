-- NOT NULL : CHECK 제약사항으로 분류 됨
-- CHECK
-- UNIQUE
-- FOREIGN KEY
-- PRIMARY KEY

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';
-- CONSTRAINT_NAME 작성 가능


-- 책 (252 쪽)
CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE, 
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR(100)
); --> 제약사항의 이름을 만들어 저장
--> 이름없이 저장해두면 오라클이 CONSTRAINT_NAME을 자동으로 저장해줌

CREATE TABLE customer(
    id VARCHAR2(20),
    pwd VARCHAR(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR(30),
    address VARCHAR(100),
    CONSTRAINT customer_id_pk PRIMARY KEY(id) 
    );
    
SELECT * FROM user_constraints
WHERE CONSTRAINT_NAME LIKE 'EMP_SECOND%';

CREATE TABLE emp_second (
    eno NUMBER(4) CONSTRAINT emp_seconde_eno_pk PRIMARY KEY, 
    ename VARCHAR2(10),
    job VARCHAR2(9),
    dno NUMBER(2) CONSTRAINT emp_seconde_dno_fk REFERENCES department
    );
    
CREATE TABLE emp_second (
    eno NUMBER(4) CONSTRAINT emp_seconde_eno_pk PRIMARY KEY,
    ename VARCHAR2(10),
    salary NUMBER(7, 2) CONSTRAINT emp_second_salary_min CHECK (salary > 0)
    );
    


