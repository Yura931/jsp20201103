select * FROM employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%D';
SELECT * FROM employee WHERE ename LIKE '%D%';
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT * FROM employee WHERE ename LIKE '_A%';

-- ���� LIKE �����ڿ� ���ϵ�ī��� �̸��� 'F'�� �����ϴ� ��� ����ϱ�
SELECT * FROM employee WHERE ename LIKE 'F%';

-- LIKE �����ڿ� ���ϵ�ī�带 ������� �ʾ� �˻��� ������ ��
SELECT * FROM employee WHERE ename ='F';

-- �̸��� "M"�� ���ԵǾ� �ִ� ��� ����ϱ�
SELECT * FROM employee WHERE ename LIKE '%M%';

-- �̸��� "N"���� ������ ��� �˻��ϱ�
SELECT * FROM employee WHERE ename LIKE '%N';

-- �̸��� �� ��° ���ڰ� "A"�� ��� �˻��ϱ�
SELECT * FROM employee WHERE ename LIKE '_A%';

-- �̸��� ����° ���ڰ� "A"�� ��� �˻��ϱ�
SELECT * FROM employee WHERE ename LIKE '__A%';

-- NOT LIKE ������ ����ϱ�
SELECT * FROM employee
WHERE ename NOT LIKE '%A%';

SELECT * FROM employee;
SELECT * FROM employee WHERE commission = NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

-- ���� ����� Ŀ�̼� ����ϱ�
SELECT ename, commission, dno FROM employee; 

-- Į�� ���� NULL���� ��ȸ�ϱ�
SELECT * FROM employee WHERE commission IS NULL;

-- Į�� ���� NULL�� �ƴ��� ��ȸ�ϱ�
SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee ORDER BY eno;

SELECT * FROM employee WHERE 
salary > 2000 ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC;

SELECT * FROM employee
ORDER BY eno DESC;

SELECT * FROM employee
ORDER BY dno, ename;

SELECT dno, ename FROM employee
ORDER BY dno DESC, ename ASC;

-- ���� ������������ �����ϱ�
SELECT * FROM employee
ORDER BY salary ASC;

-- ���� ��� �����ϱ�
SELECT * FROM employee
ORDER BY salary;

-- �������� �����ϱ�
SELECT * FROM employee
ORDER BY salary DESC;

-- ���ڵ����ͷ� �������� �����ϱ�
SELECT * FROM employee
ORDER BY ename;

-- ��¥ �����ͷ� �������� �����ϱ�
SELECT * FROM employee
ORDER BY hiredate DESC;

-- ���� ���� Į���� ���ؼ� ���� ���� ���ϱ�
SELECT * FROM employee
ORDER BY salary DESC, ename ASC;

-- ȥ���غ��� --
-- 2.
SELECT ename, salary, salary*12+100 ���� 
FROM employee
ORDER BY ���� DESC;

-- 3.
SELECT ename, salary 
FROM employee 
WHERE salary > 2000 
ORDER BY salary DESC;

-- 7.
SELECT ename, dno 
FROM employee 
WHERE dno in(20, 30) 
ORDER BY ename DESC;

-- 8.
SELECT ename, salary, dno
FROM employee 
WHERE salary BETWEEN 2000 AND 3000
AND dno IN(20, 30) ORDER BY ename;

-- 9.
SELECT ename , hiredate 
FROM employee
WHERE hiredate LIKE '81%';

-- 10.
SELECT ename, job
FROM employee
WHERE MANAGER IS NULL;

-- 11.
SELECT ename, salary, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY salary, commission DESC;

-- 12.
SELECT ename
FROM employee
WHERE ename LIKE '__R%';

-- 13.
SELECT ename
FROM employee
WHERE ename LIKE '%A%'
AND ename LIKE '%E%';