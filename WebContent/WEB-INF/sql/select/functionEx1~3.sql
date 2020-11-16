SELECT sysdate FROM dual;
SELECT sysdate FROM employee;

SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS ename FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle mania') AS namea FROM dual;

-- ���� ��ҹ��� ��ȯ �Լ� ����ϱ�
SELECT 'Oracle mania', 
UPPER('Oracle mania'), 
LOWER('Oracle mania'), 
INITCAP('Oracle mania') FROM dual;

-- ��ҹ��� ��ȯ �Լ��� Į���� ����ϱ�
SELECT ename, LOWER(ename), job, INITCAP(job)
FROM employee;

-- scott ��� �˻��ϱ�
SELECT eno, ename, dno 
FROM employee
WHERE ename = 'scott';

-- scott ��� �˻��ϱ�
SELECT eno,ename, dno
FROM employee
WHERE LOWER(ename)='scott';

-- Scott ��� �˻��ϱ�
SELECT eno,ename,dno
FROM employee
WHERE INITCAP(ename)='Scott';

SELECT * FROM employee 
WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) LENGTH  FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTHB('�����α׷���') FROM dual;

-- ���� ������ �ѱ��� ���� ���ϱ�
SELECT LENGTH('OracleMania'), length('����Ŭ�ŴϾ�')
FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;

SELECT SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

-- ���� ���� �����ϱ�
SELECT 'Oracle', 'Mania', CONCAT('Oracle','Mania')
FROM dual;

-- ���ڿ��� �Ϻθ� �����ϱ�
SELECT SUBSTR('Oracle mania', 4, 3),
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- �̸��� N���� ������ ��� ǥ���ϱ�
SELECT *
FROM employee
WHERE SUBSTR(ename, -1, 1)='N';

-- 87�⵵�� �Ի��� ��� ǥ���ϱ�
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 1, 2) = 87;

SELECT * 
FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'yyyy-mm-dd'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

-- ���� ���� ��ġ ã��
SELECT INSTR('Oracle mania', 'a')
FROM dual;

-- Ư�� ��ġ ������ ���� ��ġ ã��
SELECT INSTR('Oracle mania', 'a', 5, 2)
FROM dual;

SELECT *
FROM employee
WHERE INSTR(ename, 'R', 3, 1) = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;

SELECT ename, RPAD(ename, 10, '*') FROM employee;

-- ���� �ڸ��� Ư�� ��ȣ�� ä���
SELECT LPAD(salary, 10, '*')
FROM employee;

-- ������ �ڸ��� Ư�� ��ȣ�� ä���
SELECT RPAD(salary, 10, '*')
FROM employee;

SELECT TRIM('  ABC  ') FROM dual;
SELECT RTRIM('  ABC  ') FROM dual;
SELECT LTRIM('  ABC  ') FROM dual;

-- ���� ���� �����ϱ�
SELECT ' Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM(' Oracle mania ')
FROM dual;

-- Ư�� ���� �����ϱ�
SELECT 'Oracle mania',
TRIM('O'FROM 'Oraclm manai')
FROM dual;

-- �յ� ���� �����ϱ�
SELECT TRIM(' Oracle mania ')
FROM dual;