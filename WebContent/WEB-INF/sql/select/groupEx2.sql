SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

-- �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�
SELECT dno AS"�μ� ��ȣ",
AVG(salary) AS "�޿� ���"
FROM employee
GROUP BY dno;

-- �Ҽ� �μ��� ��� �޿� ���ϱ�
SELECT dno, AVG(salary) AS "�޿� ���"
FROM employee
GROUP BY dno;

-- �׷��Լ����� �߸��� ���� ��
SELECT dno, ename, avg(salary)
FROM employee
GROUP BY dno;

-- �ٸ� Į���� �̿��Ͽ� �׷캰�� �˻��ϱ�
SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno, job
ORDER BY dno, job;

SELECT DISTINCT(job) FROM employee;

SELECT job, avg(salary) FROM employee
GROUP BY job;

-- �׷��Լ��� WHERE���� �Ұ�
SELECT job, avg(salary) FROM employee
WHERE avg(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job
HAVING avg(salary) >= 3000;

-- �μ��� �޿� �Ѿ��� 3000 �̻��� �μ��� ��ȣ�� �μ��� �׺� �Ѿ� ���ϱ�
SELECT dno, max(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

-- �ְ� �޿� ����ϱ�
SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

-- ȥ�� �غ���
-- �޿� �ְ��, ������, �Ѿ� �� ��� �޿� ����ϱ�
SELECT MAX(salary) AS "MAXIMUM",
MIN(salary) AS "MINIMUM",
SUM(salary) AS "SUM",
ROUND(avg(salary)) AS "AVERAGE"
FROM employee;

-- ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��ձ޿� ����ϱ�
SELECT job AS "job",
MAX(salary) AS "Maximum",
MIN(salary) AS "Minimum",
SUM(salary) AS "Sum",
ROUND(AVG(salary)) AS "Average"
FROM employee
GROUP BY job;

-- ��� ������ ������ ����� ����ϱ�
SELECT job, COUNT(*)
FROM employee
GROUP BY job;

-- ������ �� ����ϱ�
SELECT COUNT(manager)
FROM employee;

-- �޿� �ְ��, �޿� �������� ���� ����ϱ�
SELECT MAX(salary)-MIN(salary) AS difference
FROM employee;

-- ���޺� ����� ���� �޿� ����ϱ�
SELECT job, min(salary)
FROM employee
GROUP BY job
HAVING NOT MIN(salary)<2000
ORDER BY MIN(salary) desc;

-- �μ��� �����, ��� �޿� ����ϱ�
SELECT dno, 
COUNT(*) AS "Number of People",
ROUND(AVG(salary),2) AS "Salary"
FROM employee
GROUP BY dno
ORDER BY dno asc;

-- �μ���ȣ �̸�, ������, �����, �μ����� ��� ����� ��� �޿� ����ϱ�
SELECT DECODE(dno, 10, 'ACCOUNTING',
                    20, 'RESEARCH',
                    30, 'SALES',
                    40, 'OPERATIONS') AS "dname",
      DECODE(dno, 10, 'NEW YOURK',
                  20, 'DALLAS',
                  30, 'CHICAGO',
                  40, 'BOSTON') AS "Location",
      COUNT(*) AS "Number of People",
      ROUND(AVG(salary)) AS "Salary"
FROM employee
GROUP BY dno;

SELECT  ROUND(AVG(salary)) AS "Salary" FROM employee;

-- �μ��� ��� �Ѿ� ����ϱ�
SELECT job, dno,
DECODE(dno, 10, sum(salary)) AS "�μ� 10",
DECODE(dno, 20, sum(salary)) AS "�μ� 20",
DECODE(dno, 30, sum(salary)) AS "�μ� 30",
SUM(salary) AS "�Ѿ�"
FROM employee
GROUP by job, dno
ORDER BY dno;

SELECT dno FROM employee;

SELECT ename, dno FROM employee
WHERE ename LIKE '%A%';



