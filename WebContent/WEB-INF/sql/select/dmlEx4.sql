-- UPDATE
-- 데이터를 변경하는 명령문
-- UPDATE 테이블명 SET 컬럼명=컬럼에 할당할 값,컬럼=값 , , WHERE절이 없으면 모든 레코드에 영향을 미치게 됨, 적절한 WHERE절 선택
UPDATE dept_copy
SET dname='HR'; -->dname의 모든 레코드가 HR로 바뀜

DESC dept_copy;
SELECT * FROM dept_copy;

UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;

COMMIT;

-- 어떤 쿼리에 다른 쿼리가 포함될 수 있다.
-- 서브쿼리 사용
UPDATE dept_copy
SET loc=(
         SELECT loc
         FROM dept_copy
         WHERE dno=20 --> 쿼리의 결과를 컬럼에 할당
)
WHERE dno=10; --> dno가 10인 곳의 loc를 변경,dno가 20인 값이 dno 10 값을 가지고 있는 loc값으로 변경

UPDATE dept_copy
SET dname=(
           SELECT dname
           FROM dept_copy
           WHERE dno=30), --> dno가 30인 dname으로 변경
loc=(
     SELECT loc
     FROM dept_copy
     WHERE dno=30 --> dno가 30인 loc로 loc를 변경
)
WHERE dno=10;

COMMIT;

-- 혼자해보기
-- employee 테이블의 구조와 내용을 복사하여 EMP_COPY란 이름의 테이블을 만드시오

DROP TABLE emp_copy;
SELECT * FROM emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

-- 사원번호가 7788인 사원의 부서번호를 10번으로 수정
UPDATE emp_copy
SET dno=10
WHERE eno=7788;

-- 사원번호 7788의 담당업무 및 급여를 사원번호 7499의 담당업무 및 급여와 일치하도록 갱신
UPDATE emp_copy
SET job=(
        SELECT job
        FROM emp_copy
        WHERE eno=7499
),
salary=(
        SELECT salary
        FROM emp_copy
        WHERE eno=7499
)
WHERE eno=7788;

UPDATE emp_copy
SET(job, salary) = (
                    SELECT job, salary
                    FROM emp_copy
                    WHERE eno=7499
)
WHERE eno=7788;

-- 사원번호 7369와 업무가 동일한 모든 사원의 부서번호를 사원 7369의 현재 부서번호로 갱신
UPDATE emp_copy
SET dno=(
        SELECT dno
        FROM emp_copy
        WHERE eno=7369
) --> 데이터가 변경되는 서브쿼리
WHERE job=(
            SELECT job
            FROM emp_copy
            WHERE eno=7369 --> 조건을 넣어주는 서브쿼리
);            

-- DELETE
-- DELETE (FROM) tname WHERE FROM절 생략해도 됨
SELECT * FROM dept_copy;

DELETE FROM dept_copy
WHERE dno=10; --> dno가 10인 한줄이 삭제되는것

DELETE dept_copy; --> WHERE없이 DELETE를 사용하면 모든 레코드가 사라짐

COMMIT;

DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;

DELETE emp_copy
WHERE dno=(
           SELECT dno
           FROM department
           WHERE dname='SALES');

COMMIT;

-- department 테이블의 구조와 내용을 복사하여 DEPT_COPY란 이름의 테이블 만들기
drop table dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

SELECT * FROM dept_copy;

-- DEPT_COPY 테이블에서 부서명이 RESEARCH인 부서 제거
DELETE dept_copy
WHERE dname='RESEARCH';

-- DEPT_COPY 테이블에서 부서 번호가 10이거나 40인 부서를 제거
DELETE dept_copy
WHERE dno IN (10, 40);
