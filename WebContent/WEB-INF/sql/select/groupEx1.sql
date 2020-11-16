SELECT commission, NVL(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;


SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

-- ���� ������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ� ����ϱ�
SELECT SUM(salary) AS "�޿��Ѿ�",
        AVG(salary) AS "�޿����",
        MAX(salary) AS "�ִ�޿�",
        MIN(salary) AS "�ּұ޿�"
FROM employee;

-- �ֱٿ� �Ի��� ����� ���� �������� �Ի��ѻ���� �Ի��� ����ϱ�
SELECT MAX(hiredate), MIN(hiredate)
FROM employee;

SELECT COUNT(commission) FROM employee;
-- NULL�� ������ ���� COUNT ��
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

-- ������� Ŀ�̼� �Ѿ� ����ϱ�
SELECT SUM(commission) AS "Ŀ�̼� �Ѿ�"
FROM employee;

-- ��ü ����� �� ���ϱ�
SELECT COUNT(*) AS "����� ��"
FROM employee;

-- Ŀ�̼��� �޴� ����� �� ���ϱ�
SELECT COUNT(commission) AS "Ŀ�̼� �޴� ��� ��"
FROM employee;

-- ���� ������ ���� ����ϱ�, �ߺ��� ������ ����
SELECT COUNT(DISTINCT job) AS "���� ������ ����"
FROM employee;

SELECT COUNT(job) FROM employee;
SELECT SUM(salary) FROM employee;

SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

