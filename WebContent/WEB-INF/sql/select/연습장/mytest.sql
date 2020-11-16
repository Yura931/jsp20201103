-- �޿�(salary)�� 1500 �̻��� ��� ����ϱ�
SELECT * FROM employee WHERE salary >= 1500;

-- 10�� �μ� �Ҽ� ��� ����ϱ�
SELECT * FROM employee WHERE dno = 10;

-- �̸��� SCOTT�� ��� ����ϱ�
SELECT * FROM employee WHERE ename = 'SCOTT';

-- �Ի���(hiredate)�� '1981/01/01' ������ ����� ����ϱ�
SELECT * FROM employee WHERE hiredate <='1981/01/01';

-- �μ���ȣ�� 10�̰� ������ 'MANAGER'�� ����� ����ϱ�
SELECT * FROM employee WHERE dno = 10 AND job = 'MANAGER';

-- �μ���ȣ�� 10�̰ų� ������ 'MANAGER'�� ����� ����ϱ�
SELECT * FROM employee WHERE dno = 10 OR job = 'MANAGER';

-- NOT�� �̿��� ���� �����ϱ�
SELECT * FROM employee
WHERE NOT dno = 10;

-- <>�� �̿��� ���� �����ϱ�
SELECT * FROM employee
WHERE dno <> 10;

-- �޿��� 1000���� 1500 ������ ��� ����ϱ�
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- �޿��� 1000 �̸��̰ų� 1500 �ʰ��� ��� ����ϱ�
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

-- BETWEEN AND ������ ����ϱ�
SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 1500;

-- AND �� ������ ����ϱ�
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

-- NOT BETWEEN AND ������ ����ϱ�
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

-- OR �� ������ ����ϱ�
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 1982�⿡ �Ի��� ��� ����ϱ�
SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

-- IN ������ ����ϱ�
SELECT * FROM employee
WHERE commission in(300, 500, 1400);

-- OR �� ������ ����ϱ�
SELECT * FROM employee
WHERE commission=300 OR commission=500 OR commission=1400;

-- <> ������ ����ϱ�
SELECT * FROM employee
WHERE commission<>300 AND commission<>500 AND commission<>1400;

-- NOT IN ������ ����ϱ�
SELECT * FROM employee
WHERE commission NOT IN(300, 500, 1400);

SELECT * FROM Employee
WHERE ename NOT IN('SCOTT');

-- LIKE �����ڿ� ���ϵ�ī��� �̸��� 'F'�� �����ϴ� ��� ����ϱ�
SELECT * FROM employee
WHERE ename LIKE 'F%';

-- LIKE �����ڿ� ���ϵ�ī�带 ������� �ʾ� �˻��� ������ ��
SELECT * FROM employee
WHERE ename = 'F';

-- �̸��� 'M'�� ���ԵǾ� �ִ� ��� ����ϱ�
SELECT * FROM employee
WHERE ename LIKE '%M%';

-- �̸��� 'N'���� �P���� ��� �˻��ϱ�
SELECT * FROM employee
WHERE ename LIKE '%N';

-- �̸��� �� ��° ���ڰ� 'A'�� ��� �˻��ϱ�
SELECT * FROM employee
WHERE ename LIKE '_A%';

-- �̸��� �� ���� ���ڰ� 'A'�� ��� �˻��ϱ�
SELECT * FROM employee
WHERE ename LIKE '__A%';

-- NOT LIKE ������ ����ϱ�
SELECT * FROM employee
WHERE ename NOT LIKE '%A%' AND ename NOT LIKE 'A%';

-- ����� Ŀ�̼� ����ϱ�
SELECT ename, dno, commission
FROM employee;

-- Ŀ�̼��� NULL�� ����� ã�µ� �����ϴ� ��
SELECT * FROM employee 
WHERE commission = null;

-- Į�� ���� NULL���� ��ȸ�ϱ�
SELECT * FROM employee
WHERE commission IS NULL;

-- Į�� ���� NULL�� �ƴ��� ��ȸ�ϱ�
SELECT * FROM employee
WHERE commission IS NOT NULL;

-- ������������ �����ϱ�
SELECT * FROM employee
ORDER BY salary ASC;

-- ���� ��� �����ϱ�
SELECT * FROM employee
ORDER BY salary;

-- �������� �����ϱ�
SELECT * FROM employee
ORDER BY salary DESC;

-- ���� �����ͷ� �������� �����ϱ�
SELECT * FROM employee
ORDER BY ename;

-- ��¥ �����ͷ� �������� �����ϱ�
SELECT * FROM employee
ORDER BY hiredate DESC;

-- ���� ���� Į���� ���ؼ� ���� ���� ���ϱ�
SELECT * FROM employee
ORDER BY ename DESC, salary ASC;

-- �޿� $300 �λ��ϱ�
SELECT ename, salary, salary + 300 FROM employee ;

-- �Ѽ��� ��(������ ���� �ͺ��� �۾�������)���� ����ϱ�
SELECT ename, salary, salary * 12 + 100 AS "����"
FROM employee
ORDER BY "����" DESC;

-- �����ȣ�� 7788�� ��� ����ϱ�
SELECT ename, dno
FROM employee
WHERE eno = 7788;

-- �޿��� 2000 ���� 3000 ���̿� ���Ե��� �ʴ� ��� ����ϱ�
SELECT dno, ename 
FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 1981�� 2�� 20�� ���� 1981 5�� 1�� ���̿� �Ի��� ��� ����ϱ�
SELECT *
FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- �μ� 20 �� 30�� ���� ��� ����ϱ�
SELECT ename, dno
FROM employee
WHERE dno IN(20, 30)
ORDER BY ename;

-- �޿��� 2000���� 3000 ���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30�� ��� ����ϱ�
SELECT ename , dno
FROM employee
WHERE salary BETWEEN 2000 AND 3000 
AND dno IN(20, 30)
ORDER BY dno;

-- 1981�⵵�� �Ի��� ��� ����ϱ�
SELECT ename, dno, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31'
ORDER BY hiredate;

SELECT ename, dno, hiredate
FROM employee
WHERE hiredate LIKE '81%';

-- �����ڰ� ���� ��� ����ϱ�
SELECT ename, job
FROM employee
WHERE manager IS NULL;

-- Ŀ�̼��� ���� �� �ִ� �ڰ��� �Ǵ� ��� ����ϱ�
SELECT ename, job, commission
FROM employee
WHERE commission IS NOT NULL
ORDER BY ename ASC, commission DESC;

-- �̸��� �� ��° ���ڰ� R�� ��� ����ϱ�
SELECT eno, ename, job, salary, hiredate
FROM employee
WHERE ename LIKE '__R%'
ORDER BY eno;

-- �̸��� A�� E�� ��� �����ϰ� �ִ� ��� ����ϱ�
SELECT eno, ename, job
FROM employee
WHERE ename LIKE '%A%'
AND ename LIKE '%E%'
ORDER BY eno;

-- �繫�� �Ǵ� ��������̸鼭 �޿��� $1600, $950 �Ǵ� $1300�� �ƴ� ��� ����ϱ�
SELECT ename, job, salary
FROM employee
WHERE job IN('CLERK', 'SALESMAN') AND
salary NOT IN(1600, 950, 1300);

-- Ŀ�̼��� $500 �̻��� ��� ����ϱ�
SELECT ename, job, salary, commission
FROM employee
WHERE commission >= 500;

-- ��ҹ��� ��ȯ �Լ� ����ϱ�
SELECT 'Oracle mania',
UPPER('Oracle manian'),
LOWER('Oracle mania'),
INITCAP('Oracle mania')
FROM dual;

-- ��ҹ��� ��ȯ �Լ��� Į���� ����ϱ�
SELECT ename, LOWER(ename), job, INITCAP(job)
FROM employee;

-- scott ��� �˻��ϱ�
SELECT eno, ename, dno
FROM employee
WHERE LOWER(ename)='scott';

-- Scott ��� �˻��ϱ�
SELECT eno, ename, dno
FROM employee
WHERE INITCAP(ename) = 'Scott';

-- ������ �ѱ��� ���� ���ϱ�
SELECT LENGTH('Oracle mania'), LENGTH('����Ŭ�ŴϾ�')
FROM dual;

-- ������ �ѱ��� ����Ʈ �� ���ϱ�
SELECT LENGTHB('Oracle mania'), LENGTHB('����Ŭ�ŴϾ�')
FROM dual;

-- ���� �����ϱ�
SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania')
FROM dual;

-- ���ڿ��� �Ϻθ� �����ϱ�
SELECT SUBSTR('Oracle mania', 4, 3),
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- �̸��� N���� ������ ��� ǥ���ϱ�
SELECT *
FROM employee
WHERE SUBSTR(ename, -1, 1) = 'N';

-- 87�⵵�� �Ի��� ��� ã��
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 1, 2) = '87';

-- SUBSTR �Լ��� ���� �����ϱ�
SELECT SUBSTR('Oracle mania', 4, 3) ,
SUBSTR('Oracle mania', -4, 3)
FROM dual;

-- ���� ��ġ ã��
SELECT INSTR('Oracle mania', 'a')
FROM dual;

-- Ư�� ��ġ ������ ���� ã��
SELECT INSTR('Oracle mania', 'a', 5, 2)
FROM dual;

-- ��� �˻��ϱ�
SELECT * 
FROM employee
WHERE INSTR(ename, 'R', 3, 1) = 3;

-- ���� �ڸ��� Ư�� ��ȣ�� ä���
SELECT LPAD(salary, 10, '*')
FROM employee;

-- ������ �ڸ��� Ư�� ��ȣ�� ä���
SELECT RPAD(salary, 10, '#')
FROM employee;

-- ���� ���� ��������
SELECT ' Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM(' Oracle mania ')
FROM dual;

-- Ư�� ���� �����ϱ�
SELECT 'Oracle mania', TRIM('O' FROM 'Oracle mania')
FROM dual;

-- �յ� ���� �����ϱ�
SELECT TRIM(' Oracle mania ')
FROM dual;

-- �ݿø��ϱ�
SELECT 98.7654,
ROUND(98.7654),
ROUND(98.7654, 2),
ROUND(98.7654, -1)
FROM dual;

-- �߶󳻱�
SELECT 98.7654,
TRUNC(98.7654),
TRUNC(98.7654, 2),
TRUNC(98.7654, -1)
FROM dual;

-- ������ ��ȯ�ϱ�
SELECT MOD(31, 2),
MOD(31, 5),
MOD(31, 8)
FROM dual;

-- ������ ���ϱ�
SELECT ename, salary, MOD(salary, 500)
FROM employee;

-- ���� ��¥ ǥ���ϱ�
SELECT sysdate
FROM dual;

-- ��¥ ����ϱ�
SELECT SYSDATE -1 ����,
SYSDATE ����,
SYSDATE +1 ����
FROM dual;

-- �ٹ��ϼ� ����ϱ�
SELECT ROUND(SYSDATE-HIREDATE) �ٹ��ϼ�
FROM employee;

-- Ư�� ��¥(DATE)���� ��(MONTH)�� �������� ������ ��¥ ���ϱ�
SELECT hiredate,
TRUNC(HIREDATE, 'MONTH')
FROM employee;

-- �� ������� �ٹ��� ���� �� ���ϱ�
SELECT ename, sysdate, hiredate,
TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE))
FROM employee;

-- �Ի����� 6���� ���� ��¥ ���ϱ�
SELECT ename, hiredate,
ADD_MONTHS(HIREDATE, 6)
FROM employee;

-- ������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
SELECT SYSDATE,
NEXT_DAY(SYSDATE, '�����')
FROM dual;

-- �Ի��� ���� ������ �� ���ϱ�
SELECT ename, hiredate,
LAST_DAY(HIREDATE)
FROM Employee;

-- ��¥ �Լ� ����ϱ�
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM'),
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;
