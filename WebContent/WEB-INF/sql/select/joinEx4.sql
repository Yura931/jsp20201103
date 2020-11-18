-- 14 * 14��ŭ�� ���ڵ尡 ��ȸ ��
SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;
-- e2.eno�� null�̰ų� e1.manager�� null�̸� �� ����equi join���� ������ ���� ��
-- null���� ���� �Ǿ� 13���� �ο찪�� ����
-- null �� ���� ǥ���ϰ� ���� ��
-- inner join = null ����, outer join 
-- null���� ǥ���ϴ� ��� �� ����

SELECT * FROM employee;
-- �� ������ �� 14, null �� ����

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;
-- �� �� inner join ����, Ư���� ���� ������ ������ inner join --
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2 
ON e1.manager = e2 .eno;

-- LEFT, RIGHT OUTER JOIN ����, ������ null���� ���� Į���� �ٸ� Į���� �ο� ǥ��
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- LEFT OUTER JOIN�� ���� ���, ������ �÷���(+)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

-- RIGHT OUTER JOIN
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- RIGHT OUTER JOIN, ���� Į����(+)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager(+) = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;
-- null���� ���� ��� Į���� ��� �ο� ��ȸ

-- ANSI OUTER JOIN ����ϱ�
SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

-- ȥ���غ���
-- Ư�� ����� �μ���ȣ�� �μ��̸� ����ϱ�
SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

-- ����� �μ���ȣ, �μ��̸�, ������ ����ϱ�
SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

-- 10�� �μ��� ���ϴ� ��� ��� ������ ������ ����ϱ�
SELECT dno, job, loc
FROM employee inner join department
USING(dno)
WHERE dno = 10;

-- Ŀ�̼��� �޴� ����� �̸�, �μ��̸�, ������ ����ϱ�
SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

-- �̸��� A�� ���Ե� ��� ����� �̸��� �μ� �̸� ����ϱ�
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename LIKE '%A%';

-- NEW YORK�� �ٹ��ϴ� ��� ����ϱ�
SELECT ename, job, dno, dname
FROM employee NATURAL JOIN department
WHERE loc = 'NEW YORK';

-- �� ����� ������ �̸� �� ������ ��ȣ ����ϱ�
SELECT emp.ename AS "Employee",
emp.manager AS "Emp#",
mgr.eno AS "Manager",
mgr.ename AS "MGR#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno;

-- �����ڰ� ���� ����� �����Ͽ� �� ����� ������ �̸� ����ϱ�
SELECT emp.ename as "Employee",
emp.manager as "Emp#",
mgr.eno As "Manager",
mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno(+)
ORDER BY emp.eno DESC;

-- ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
SELECT me.ename as �̸�, me.dno as �μ���ȣ, other.ename as ����
FROM employee me, employee other
WHERE me.dno = other.dno
AND me.ename='SCOTT'
AND other.ename!='SCOTT';

-- WARD ������� �ʰ� �Ի��� ��� ����ϱ�
SELECT other.ename, other.hiredate
FROM employee ward, employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename='WARD'
ORDER BY hiredate;

-- �����ں��� ���� �Ի��� ��� ����ϱ�
SELECT other.ename, other.hiredate, mgr.ename, mgr.hiredate
FROM employee mgr, employee other
WHERE other.manager = mgr.eno
AND other.hiredate <= mgr.hiredate;
