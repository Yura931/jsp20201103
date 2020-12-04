-- PRIMARY KEY
CREATE TABLE const09 (
    id NUMBER,
    name VARCHAR2(30),
    PRIMARY KEY (id) --> 컬럼명 옆에 바로 명시하지 않고 뒤에 따로 빼서 PRIMARY KEY 지정 가능
);

INSERT INTO const09 (id, name)
VALUES (NULL, 'a');
INSERT INTO const09 (id, name)
VALUES (1, 'a');
INSERT INTO const09 (id, name)
VALUES (1, 'b');
COMMIT;

-- FOREIGN KEY
CREATE TABLE const10
(
name VARCHAR2(30),
dno NUMBER(2),
FOREIGN KEY (dno) REFERENCES const08_dep -- 참조키도 컬럼명에 작성하지 않고 따로 작성 가능 
);

INSERT INTO const10
VALUES ('a', 10);

INSERT INTO const10
VALUES ('a', 50);

COMMIT;

-- PRIMARY KEY, FROEIGN KEY 동시에
CREATE TABLE const11
(
id NUMBER,
name VARCHAR2(30),
dno NUMBER(2) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (dno) REFERENCES const08_dep
);



