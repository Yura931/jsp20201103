-- 데이터(record, row) 추가
-- INSERT INTO tname (col1, col2) VALUES (val1, val2);
-- 특정한 칼럼에 값을 넣고 싶을 때 컬럼 명 작성 값의 목록은 VALUES키워드 다음 ()안에 작성

INSERT INTO dept_copy
VALUES(10, 'ACCOUNTING', 'NEW YORK');

CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

DESC dept_copy;
INSERT INTO dept_copy -- (dno, dname, loc) 모든 컬럼에 값을 넣을 땐 컬럼 명 다 작성할 필요 없음
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');

INSERT INTO dept_copy (dname, dno, loc) -- 넣어준 칼럼명의 순서에 맞게 VALUES값을 채워넣어줘야 함
VALUES (20, 'DALLAS', 'RESEARCH');


SELECT * FROM dept_copy;

COMMIT; -- ->작성 완료후 수시로 커밋

-- NULL(존재하지 않을 경우)
-- 값을 안 넣는 경우
DESC dept_copy;
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALES'); -- 두 개의 컬럼에만 값을 넣는 쿼리 , loc컬럼에는 값을 넣어주지 않았음
-- loc컬럼은 null로 남아있게 됨

SELECT * FROM dept_copy;

ALTER TABLE dept_copy
DROP COLUMN loc;

INSERT INTO dept_copy -- (dno, dname, loc) dept_copy에 정의된 컬럼의 순서와 컬럼명의 순서가 같기 때문에 생략 가능
VALUES (40, 'OPERATIONS', NULL); -- 직접 NULL을 넣어줄 수 있음

TRUNCATE TABLE dept_copy;
DROP TABLE dept_copy; 

INSERT INTO dept_copy
VALUES (50, 'COMPUTING', ''); -- ''비어있는 스트링도 NULL로 채워짐

SELECT * FROM dept_copy;

COMMIT;