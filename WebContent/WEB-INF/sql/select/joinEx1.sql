-- 14�� ��, 8�� ��
SELECT * FROM employee;
-- 4�� ��, 3�� ��
SELECT * FROM department;

SELECT * FROM employee, department;


SELECT eno, ename, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

-- ���� �� ������� �Ҽӵ� �μ����� ���
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

-- �����ȣ, ����̸�, �ҼӺμ� �̸� ����ϱ�
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- ��ȣ�� Į�������� ���� ���� ��
SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- Į���� �տ� ���̺�� ����ϱ�
SELECT employee.eno, employee.ename,department.dname,employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND employee.eno = 7788;

-- �κ������� Į���� �տ� ���̺�� ����ϱ�
SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- ���̺�� ��Ī ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7788;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dno
FROM employee e, department d
WHERE e.dno = d.dno;

-- ���� Į���� ���̺� ��Ī�� ����Ͽ� ������ �߻��� ��
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- ���� Į���� ���̺� ��Ī�� ������� ���� ����� ��
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE E.eno = 7788;

-- ȥ�� �غ���
-- 1. Ư�� ����� �μ���ȣ�� �μ��̸� ����ϱ�
SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

-- 5. �̸��� A�� ���Ե� ��� ����� �̸��� �μ� �̸� ����ϱ�
SELECT e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename LIKE '%A%';

SELECT e.eno, e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

-- join
SELECT * FROM employee natural join department;
SELECT * FROM employee natural join department
WHERE eno = 7782;

-- join using
SELECT * FROM employee join department USING(dno);
SELECT * FROM Employee JOIN department USING(dno)
WHERE eno = 7788;

-- join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
-- �÷���, Ÿ���� �ٸ� ������ ��� ����
SELECT * FROM employee e JOIN department d ON e. dno = d.dno
WHERE eno = 7788;

-- ���� Į���� ���̺� ��Ī�� ����Ͽ� ������ �߻��� ��
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- ���� Į���� ���̺� ��Ī�� ������� ���� ����� ��
SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE e.eno = 7788;

-- USING �� ����ϱ�
SELECT e.eno, e.ename, d.dname, dno
FROM employee e join department d
USING(dno)
WHERE E.eno = 7788;

-- ON �� ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e join department d
ON e.dno = d.dno
WHERE e.eno = 7788;

-- ȥ�� �غ���
-- 2. ����� �μ���ȣ, �μ��̸�, ������ ����ϱ�
SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

-- 3. 10�� �μ��� ���ϴ� ��� ��� ������ ������ ����ϱ�
SELECT dno, job, loc
FROM employee inner join department
USING(dno)
WHERE dno = 10;

-- 4. Ŀ�̼��� �޴� ����� �̸�, �μ��̸�, ������ ����ϱ�
SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

-- 6. NEW YORK�� �ٹ��ϴ� ��� ����ϱ�
SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

SELECT * 
FROM employee, department
WHERE employee.dno = department.dno;