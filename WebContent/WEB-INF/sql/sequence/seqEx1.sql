CREATE TABLE post
(
title VARCHAR2(255),
body VARCHAR2(255)
);
--> 타이틀과 보디, 누군가 중복해서 작성할 수 있음
INSERT INTO post (title, body)
VALUES ('abc', 'def'); 
INSERT INTO post (title, body)
VALUES ('abc', 'def');
SELECT * FROM post;
--> 첫번째 게시글을 작성한 사람이 글을 삭제 함
DELETE post WHERE title='abc';
--> 같은 이름의 title을 가지고 있었기 때문에 두 게시글이 함께 삭제 됨

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;
--> 구분할 수 있는 PRIMARY KEY역할을 하는 칼럼을 생성

INSERT INTO post (id, title, body)
VALUES (1, 'abc', 'def');
INSERT INTO post (id, title, body)
VALUES (2, 'abc', 'def');
--> 중복된 글이어도 id는 primary key를 가지고 있기 때문에 중복된 값 넣을 수 없음 , 무조건 다른 값

DELETE post WHERE id=1;

--
INSERT INTO post (id, title, body) 
VALUES (3, 'abc', 'def');
--> 서로 다른 값을 가져야하는 id의 값은 현재 가지고있는 값의 다음값을 가지게 됨

-- 하나의 서버를 사용하기 때문에 MAX(id)를 사람이 직접 관리하기에는 오류가 날 확률이 많음
-- 순서대로 증가하는 값을 만드는 것이 시퀀스

-- SEQUENCE : 기본 1부터 시작 1씩 증가
CREATE SEQUENCE my_seq; 

DELETE post;
COMMIT;

SELECT * FROM post;

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval, 'abc', 'def');
--> 만들어놓은 시퀀스 이름.nextval 사용하면 오라클이 적절하게 id값을 넣어 줌
INSERT INTO post (id, title, body)
VALUES (my_seq.nextval, 'abc', 'def');
--> 같은 내용의 값을 넣어도 id값이 중복되지 않음

--
CREATE SEQUENCE my_seq2; 
--> 기본값으로 만들면 1부터 시작해서 1씩 증가
CREATE SEQUENCE my_seq2
START WITH 100;
--> START WITH 키워드 사용하면 지정해준 값부터 시작, 1씩 증가
INSERT INTO post (id, title, body)
VALUES (my_seq2.nextval, 'abc', 'def');

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;
--> INCREMENT BY 키워드 사용시 START 한 값에서 얼만큼의 값 씩 증가시킬지 지정할 수 있음

INSERT INTO post (id, title, body)
VALUES (my_seq3.nextval, 'abc', 'def');

-- 혼자 해보기 --
-- 사원 테이블의 사원번호가 자동으로 생성되도록 시퀀스를 생성
CREATE SEQUENCE emp_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 100000;

-- 사원번호를 시퀀스로부터 발급받기
CREATE TABLE emp01 (
empno NUMBER(4) PRIMARY KEY,
ename VARCHAR(10),
hiredate DATE
);

INSERT INTO emp01
VALUES(emp_seq.nextval, 'julia', sysdate);

SELECT * FROM emp01;

-- 시퀀스를 만들면 오라클이 테이블에 잘 저장해 둠
-- 최소값, 최대값, 증가값,  등등등의 정보를 보여줌
-- 시퀀스가 중간중간 비어있는 값이 생기기도 함
-- 임의로 다음값을 생성해두고 저장해두었다가 사용시 그 다음값으로 튀어버리는 경우가 있기도 함

SELECT * FROM user_sequences;

SELECT my_seq2.currval FROM dual; 
-- 시퀀스의 현재 값
SELECT my_seq2.nextval FROM dual;
-- 다음값

-- 시퀀스 삭제 -- 
DROP SEQUENCE my_seq;
DROP SEQUENCE my_seq2;

-- 시퀀스 수정 --
ALTER SEQUENCE my_seq3
INCREMENT BY 1000;

SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;

-- 시퀀스를 만들지 않아도 자동증가하는 값을 디폴트값으로 만들 수 있음 --
-- 시퀀스 작성하듯이 칼럼 생성 가능
CREATE TABLe t1 (
    id NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
    name VARCHAR2(30)
);    
SELECT * FROM t1;

INSERT INTO t1 (name)
VALUES ('jane');
INSERT INTO t1 (name)
VALUES ('donald');

SELECT * FROM user_sequences;
--> 칼럼 옆에 명시해둔 시퀀스를 내부적으로 자동 생성해서 사용해줌


SELECT title, body FROM post;
