-- DML(Data Manipulation Languate)
-- INSERT, UPDATE, DELETE
-- 이러한 조작어들은 한번에 하나의 쿼리로 완성이 되지 않는 경우가 있음

CREATE TABLE bank
(
name VARCHAR2(255),
money NUMBER
);

INSERT INTO bank VALUES ('ironman', 500);
INSERT INTO bank VALUES ('captain', 700);

COMMIT;
SELECT * FROM bank;

-- captain -> ironman에게 200원 이체, 두개의 쿼리문이 만들어져 두 개의 쿼리문이 하나의 업무가 됨
UPDATE bank
SET money = 500
WHERE name='captain';

---------- 문제 발생 .. 해서 캡틴도 500원 ironman도 남은 금액이 500원인채로 남겨질 수 있다 ..
-- 이 상황에 ROLLBACK을 해주면 ironman 500, captain 700을 가지고있는 상태로 되돌아감
-- 하나의 업무의 묶음을 트랜잭션이라 명칭, 하나의트랜잭션을 커밋하거나, 롤백하거나 결정해주어야 함

UPDATE bank
SET money = 700
WHERE name='ironman';

-- DML 반영하도록 하는 키워드가 COMMIT이라는 키워드 DML만!
-- 중간에 문제가 생기면 반영하지 말라는 키워드 ROLLBACK, 언제든 ROLLBACK할 준비가 되어야 함
-- 커밋 이전에는 실제 테이블에 반영되지 않음
ROLLBACK;