-- 제약사항 Constraint (248p)
-- 컬럼에 NULL이 들어가지 않게 하고 싶다. NOT NULL
-- UNIQUE : 유일한 값만 저장
-- check : 지정된 값(범위)만 가능
-- foreign key(외래키, 참조키)
--   : 다른 table에 있는 값만 가능
-- primary key (주요키, 주키, 키) : 
--   : NOT NULL + UNIQUE 합친 것

-- NOT NULL 
CREATE TABLE const01 (
    name VARCHAR2(30) NOT NULL, -- NOT NULL 제약사항을 줌
    age NUMBER -- 제약사항 없음
);

INSERT INTO const01
VALUES ('장유라', 28);

INSERT INTO const01
VALUES ('강한결', 32);

INSERT INTO const01
VALUES (NULL, 40); --> name 컬럼에 NOT NULL 제약사항을 걸어놓았기 때문에 NULL 삽입 시 오류가 뜸

INSERT INTO const01
VALUES ('a', NULL); --> age 컬럼에는 제약사항을 걸어놓지 않았기 때문에 NULL 오류없이 들어감

INSERT INTO const01 (age)
VALUES (50); --> age컬럼만 명시해 값을 넣어주면 name컬럼은 NULL로 남아있기 때문에 제약사항으로 인해 오류 뜸

INSERT INTO const01 (name, age)
VALUES ('', 30); --> 오라클에서 빈 스트링은 NULL로 인식, name의 제약사항으로 인해 오류가 뜸

INSERT INTO const01 (name, age)
VALUES (' ', 30); --> 스페이스, 공백은 읽힘 , NULL로 인식하지 않는다.

SELECT * FROM const01;

-- NOT NULL 제약 조건 지정하기
CREATE TABLE customer (
                       id VARCHAR2(20) NOT NULL,
                       pwd VARCHAR(20) NOT NULL,
                       name VARCHAR(20) NOT NULL,
                       phone VARCHAR(30),
                       address VARCHAR(100)
                       );
                       
-- 테이블에 NULL 데이터 추가하기
INSERT INTO customer
VALUES (NULL, NULL, NULL, '010-111-1111', 'seoul'); -- 제약사항, NULL 삽입 불가

-- UNIQUE
CREATE TABLE const02
(
    email VARCHAR2(30) UNIQUE, -- 유일한 값만 가질 수 있음, 이미있는 값이면 넣을 수 없음
    name VARCHAR2(30)
);    

INSERT INTO const02 (email, name)
VALUES ('a', 'b');

INSERT INTO const02 (email, name)
VALUES ('a', 'c'); -- 이미 'a'라는 이메일을 갖고 있기 때문에 받을 수 없음

INSERT INTO const02 (email, name)
VALUES ('c', 'b'); -- name컬럼은 제약사항이 없기 때문에 데이터추가 가능

SELECT * FROM const02;

INSERT INTO const02 (name)
VALUES ('c'); --> NOT NULL 제약사항은 없으므로 NULL 안전하게 잘 ㄷ르어감
INSERT INTO const02 (name)
VALUES ('c'); --> NULL은 값으로 인식하지 않기 때문에 중복으로 인지하지 않음, NULL이 있어도 NULL을 계속 넣을 수 있음

CREATE TABLE customer2 (
       id VARCHAR(20) UNIQUE,
       pwd VARCHAR(20) NOT NULL,
       name VARCHAR(20) NOT NULL,
       phone VARCHAR(30),
       address VARCHAR(100)
       );
       
INSERT into customer2
VALUES('geentea','1234','녹차아가씨', '010-111-1111', 'seoul');

-- CHECK
CREATE TABLE const03
(
name VARCHAR2(30),
age NUMBER CHECK (age > 0) -- 조건명시, 조건에 만족하는 값만 들어가게 됨
);

INSERT INTO const03
VALUES ('a', 30);

INSERT INTO const03
VALUES ('b', 0); -- age컬럼의 제약사항에 위배 됨

INSERT INTO const03 (name)
VALUES ('c'); -- 값이 아닌 NULL은 들어감, 값을 넣을시 조건에 맞아야 하지만 NOT NULL 제약사항을 걸진 않았기 때문에 NULL은 가능

SELECT * FROM const03;

-- 여러 제약사항을 여러개 사용 가능
CREATE TABLE const04 
(
email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
name VARCHAR2(30)
);

INSERT INTO const04 (email, name)
VALUES (NULL, 'a'); -- NOT NULL 제약사항 위배
INSERT INTO const04 (email, name)
VALUES ('a', 'b');
INSERT INTO const04 (email, name)
VALUES ('a@g', 'c');
INSERT INTO const04 (email., name)
VALUES ('a@g', 'd');
SELECT * FROM const04;

COMMIT;

