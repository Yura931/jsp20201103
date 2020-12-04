-- KEY : 각 레코드(row)를 유일하게 구분할 수 있는 컬럼(들) 하나 일수도, 여러개 일수도
-- 테이블에 여러 레코드를 넣을 수 있다.!

CREATE TABLE const05 (
    email VARCHAR(30),
    name VARCHAR(30),
    ssn VARCHAR(30),
    address VARCHAR(30),
    birth DATE -- 사용자정보 저장하는 6개의 컬럼, 6개의 데이터가 저장이 됨, 이 때 이메일은 사용자들이 각각 다른 이메일을 가지고 있으니 유일하게 구분할 수 있는 컬럼이다. 
               -- name은 사용자마다 같은 이름을 가지고 있을 수 있다.
               -- 주소 중복될 수 있음
               -- 생일도 주문될 수 있음
               -- 유일하게 구분될 수 있는 컬럼이 되는것은 email과 ssn이다. 이 둘은 KEY가 될 수 있다.
               -- name, address, birth이 세가지도 중복되는 값이 들어가지 않는다면 KEY가 될 수 있다.(후보 키)
               -- 키로 결정하면 , email을 각 레코드를 유일하게 구분할 수 있는 KEY로 선택하면 이 키가 PRIMARY KEY가 되고 나머지는 후보키가 된다.
               -- PRIMARY KEY 선택시 유의점 : 변하지 않는 값 일수록 좋다.
               -- 키 컬럼을 새로 만드는 것을 추천 (email, name, 주민등록번호 등등 ) 모든 컬럼이 바뀔 수 있는 확률이 조금씩은 있기 때문
               --     자동으로 늘어나는 정수를 사용 (업무에 따라 다름 , 꼭 이렇게 사용하는 것은 아님
               -- : NOT NULL + UNIQUE 
);
SELECT * FROM const05;

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY, --NOT NULL UNIQUE와 같은 효과
    name VARCHAR2(30)
);
INSERT INTO const06 (id, name)
VALUES (1, 'a');

INSERT INTO const06 (id, name)
VALUES (NULL, 'b');

INSERT INTO const06 (id, name)
VALUES (1, 'c');

INSERT INTO const06 (id, name)
VALUES (2, 'd');

SELECT * FROM const06;
COMMIT;

-- FOREIGN KEY
-- 외래키, 상주키, 외부에 있는 키
-- 테이블에서 
CREATE TABLE const07_emp
AS
SELECT * FROM employee;

CREATE TABLE const07_dep
AS
SELECT * FROM department;

drop table const07_edp;

SELECT eno, ename, dno FROM const07_emp;
SELECT * FROM const07_dep;

INSERT INTO const07_emp (eno, ename, dno)
VALUES (8787, 'ABC', 50); -- 외부에 있는 키에 만족해야 함, dno가 변경되지 않기를 원함

commit;

DESC department;
CREATE TABLE const08_dep
(
DNO NUMBER(2) PRIMARY KEY, -- 테이블은 dno값을 꼭 가져야 하고, dno값이 중복되면 안됨
DNAME VARCHAR2(14),
LOC VARCHAR2(13)
);
INSERT INTO const08_dep
SELECT * FROM department;
COMMIT;
SELECT * FROM department;

CREATE TABLE const08_emp
(
name VARCHAR2(30),
dno NUMBER(2) REFERENCES const08_dep -- const08_dep테이블의 dno를 참조하게 할 수 있음, 테이블에 있는 dno 값인 10,20,30,40 이 외의 다른 dno값을 가질 수 없음
-- const08_dep에 PRIMARY KEY로 명시해놓은 DNO값만을 담을 수 있게 됨, PRIMARY KEY를 참조한 것이기 때문에 참조키라 하는 것
);

INSERT INTO const08_emp (name, dno)
VALUES ('a', 10);

INSERT INTO const08_emp (name, dno)
VALUES ('b', 50); -- 참조한 키인 dno의 제약조건에 위배됨

INSERT INTO const08_emp (name, dno)
VALUES ('c', NULL); -- NULL은 ..들어가네 .. PRIMARY KEY를 참조했는데 .. 값만 참조되나 보다
COMMIT;

SELECT * FROM const08_emp;

