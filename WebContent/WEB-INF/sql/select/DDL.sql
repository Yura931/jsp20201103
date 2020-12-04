-- table 만들기
-- CREATE TABLE

CREATE TABLE table1 (
col1 NUMBER(3, 1), -- 수 3의 길이를 갖고 소수 밑 1자리를 갖음
col2 VARCHAR2(6), -- 최대 6개의 바이트를 표현, 가변길이 6bytes까지
col3 CHAR(4), -- 4개의 문자를 표현, 고정길이 문자열 4bytes
col4 DATE -- 날짜시간
);

SELECT *
FROM department;

-- DATA TYPE
-- 수, 문자열, 날짜시간
-- 수
-- NUMBER
-- NUMBER(값)
-- 수가 표현할 수 있는 갯수