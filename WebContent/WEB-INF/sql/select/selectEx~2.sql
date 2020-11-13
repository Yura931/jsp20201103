select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';

SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';

SELECT * FROM employee WHERE hiredate = '1981/02/20';

-- ���� �޿�(SALARY)�� 1500 �̻��� ��� ����ϱ�
SELECT * 
FROM employee
WHERE salary >= 1500;

-- 10�� �μ� �Ҽ� ��� ����ϱ�
SELECT *
FROM employee
WHERE dno = 10;

-- SCOTT�� Į������ �����ϰ� ������ �߻��� ��
SELECT *
FROM employee
WHERE ename = 'SCOTT';

-- �Ի���(HIREDATE)�� '1981/01/01' ������ ����� ����ϱ�
SELECT *
FROM employee
WHERE hiredate <= '1981/01/01';

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/02/22' OR salary > 3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary > 2000 dno <> 30;

-- ���� �μ���ȣ�� 10�̰� ������ 'MANAGER'�� ����� ����ϱ�
SELECT * FROM employee
WHERE dno = 10 AND job = 'MANAGER';

-- �μ���ȣ�� 10�̰ų� ������ 'MANAGER'�� ����� ����ϱ�
SELECT * FROM employee
WHERE dno = 10 OR job = 'MANAGER';

-- NOT�� �̿��� ���� �����ϱ�
SELECT * FROM employee
WHERE NOT dno = 10;

-- <>�� �̿��� ���� �����ϱ�
SELECT * FROM employee
WHERE dno <> 10;

-- �޿��� 1000���� 1500 ������ ��� ����ϱ�
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- �޿��� 1000 �̸� �̰ų� 1500 �ʰ��� ��� ����ϱ�
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT * FROM employee
WHERE dno IN (10, 20);

SELECT * FROM employee
WHERE dno NOT IN (20);

-- ���� BETWEEN AND ������ ����ϱ�
SELECT * FROM employee
WHERE salary BETWEEN 1000 and 1500;

-- AND �� ������ ����ϱ�
SELECT * FROM employee
WHERE salary >= 1000 and salary <= 1500;

-- NOT BETWEEN AND ������ ����ϱ�
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 and 1500;

-- OR �� ������ ����ϱ�
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 1982�⿡ �Ի��� ��� ����ϱ�
SELECT * FROM employee
WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31';

-- IN������ ����ϱ�
SELECT * FROM employee
WHERE commission IN (300, 500, 1400);

-- OR �� ������ ����ϱ�
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

-- <> ������ ����ϱ�
SELECT * FROM employee
WHERE commission <> 300 and commission = 500 OR commission = 1400;

-- NOT IN ������ ����ϱ�
SELECT * FROM employee
WHERE commission NOT IN(300, 500, 1400);

-- ȥ�� �غ���
-- 1. ���� �����ڸ� �̿��Ͽ� ��� ����� ���ؼ� $300�� �޿� �λ��� ����� �� ����� �̸�, �޿�, �λ�� �޿��� ����Ͻÿ�.
SELECT ename, salary, salary + 300 
FROM employee;

-- 4. �����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����Ͻÿ�.
SELECT ename, dno FROM employee
WHERE eno = 7788;

SELECT * FROM employee;

-- 5. �޿��� 2000���� 3000 ���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����Ͻÿ�.
SELECT ename, salary FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 6. 1981�� 2�� 20�� ���� 1981�� 5�� 1�� ���̿� �Ի��� ����� �̸�, ������, �Ի����� ����Ͻÿ�.
SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 14. ��� ������ �繫��(CLERK) �Ǵ� �������(SALESMAN) �̸鼭 �޿��� $1600, $950 �Ǵ� $1300�� �ƴ� ����� �̸�, ������, �޿��� ����Ͻÿ�.
SELECT ename, job, salary FROM employee
WHERE job IN('CLERK', 'SALESMAN') AND salary NOT IN(1600, 950, 1300);

-- 15. Ŀ�̼��� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼��� ����Ͻÿ�.
SELECT ename, salary, commission FROM employee
WHERE commission >= 500;

SELECT ename FROM employee WHERE eno = 7499;

SELECT * FROM employee;
SELECT * FROM department;