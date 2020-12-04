-- 테이블 변경
-- ALTER TABLE

-- 컬럼 추가
-- ALTER TABLE table_name ADD (new_col DATATYPE,,,)

ALTER TABLE dept20
ADD(birth date); -- dept20에 birth라는 컬럼을 추가하고 birth는 date타입을 가지게 된다.

DESC dept20; -- 새로 추가된 컬럼은 항상 뒤에 추가 됨 , 컬럼과, 레코드는 순서가 정해져 있는 집합, 컬럼 순서에 너무 연연하지 않아도 된다.

-- 이미있는 컬럼을 변경하고 싶다면
-- ALTER TABLE tname MODIFY (colName type,,,);

ALTER TABLE dept20
MODIFY ename VARCHAR2(30);

DESC dept20;

-- ename에 10바이트까지 저장되어 있다면 컬럼 변경시 데이터 타입 길이가 더 적데 저장되면 변경되지 않는다. 이미 가지고 있는 타입의 길이보다 크게 변경해주어야 한다.

INSERT INTO dept20
(ename) VALUES ('abcdefghij');

SELECT * FROM dept20;

ALTER TABLE tname DROP COLUMN col_name;

ALTER TABLE dept20
DROP COLUMN ename; -- dept20테이블의 ename 칼럼 삭제

DESC dept20;
