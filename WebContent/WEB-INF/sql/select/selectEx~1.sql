SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee; 
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS ���� FROM employee;
SELECT ename, salary, salary*12 ���� FROM employee;

-- ���� �ּ�
 /*
    ������ �ּ�
 */
 SELECT * FROM employee;
 SELECT ename, salary, commission, salary + commission FROM employee;
 SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
 SELECT ename, salary + NVL(commission, 0) FROM employee;
 SELECT ename, salary + NVL(commission, 0) �� FROM employee;

-- ��ü ��� ����ϱ�
select * from employee;

-- �����ȣ�� ����� ����ϱ�
select eno, ename from employee;

-- ���� ���ϱ�
select ename, salary, salary*12 from employee;

-- Ŀ�̼��� ���� ���� ���ϱ�
select ename, salary, job, dno, commission, salary*12, salary*12+commission from employee;

-- nvl �Լ� ����ϱ�
select ename, salary, job, dno, nvl(commission, 0), salary *12, salary*12 + nvl(commission, 0) from employee;

-- Į���� ��Ī �����ϱ�
select ename, salary*12+nvl(commission,0) ���� from employee;

-- Į����� ��Ī ���̿� AS �߰��ϱ�
select ename, salary*12+nvl(commission,0) as ���� from employee;

-- ""�� ��Ī �����ϱ�
select ename, salary*12+nvl(commission,0) "�� ��" from employee;

SELECT dno FROM employee;

SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;
