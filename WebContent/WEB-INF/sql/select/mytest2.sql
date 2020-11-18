-- NATURAL JOIN
SELECT e.eno, e.ename, d.dname, dno
FROM employee e NATURAL JOIN department d
WHERE e.eno = 7788;

-- ��¥ �Լ� ����ϱ�
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM')
FROM employee;

SELECT ename ,hiredate,
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;

-- ���� ��¥�� �ð� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD DAY, HH24:MI:SS')
FROM dual;

-- �޿��� ����ϸ鼭 ��ȭ ��ȣ �����̱�
SELECT ename, TO_CHAR(salary, 'L999,999')
FROM employee;

-- 1981�� 2�� 20�Ͽ� �Ի��� ��� �˻��ϱ�
SELECT ename, hiredate
FROM employee
WHERE hiredate = 198110220;

SELECT ename, hiredate
FROM employee
WHERE hiredate = TO_DATE(19810220, 'YYYY-MM-DD');

-- ���� ������ ���� ���� : �������̱� ������ ��� ������ �������� ���ϰ� ������ �߻�
SELECT '100,000' - '50,000'
FROM dual;

-- ��ġ ���·� ��ȯ�� �� ����
SELECT TO_NUMBER('100,000' , '999,999') - TO_NUMBER('50,000', '999,999')
FROM dual;

-- NULL �� ó��
SELECT NVL(commission, 0),
NVL(hiredate, '2011/5/10'),
NVL(job, 'MANAGER') 
FROM employee;

-- NVL�� NULL �� ó���ϱ�
SELECT ename, salary, commission, job,
NVL(commission, 0), salary * 12 + NVL(commission, 0)
FROM employee
ORDER BY job;

-- NVL2�� NULL �� ó���ϱ�
SELECT ename, salary, commission,
NVL2(commission, salary*12+commission, salary*12)
FROM employee
ORDER BY job;

-- NULLIF�� NULL �� ó���ϱ� - �� ǥ������ ���Ͽ� ������ ��쿡�� NULL�� ��ȯ�ϰ� �������� ������ ù ��° ǥ������ ��ȯ�Ѵ�.
SELECT NULLIF('A', 'A'), NULLIF('A', 'B')
FROM dual;

-- COALESCE�� NULL �� ó���ϱ� - �μ� �߿��� NULL�� �ƴ� ù ��° �μ��� ��ȯ
SELECT ename, salary, commission,
COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;

SELECT ename, salary, commission,
COALESCE(commission, salary * 12, 0)
FROM employee
ORDER BY job;

-- DECODE�� �μ��̸� ����ϱ�
SELECT ename, dno,
DECODE(dno, 10, 'ACC', 20, 'RES', 30, 'SAL', 40, 'OPE', 'DEF') AS DNAME
FROM employee
ORDER BY job;

-- CASE�� �μ��̸� ����ϱ�
SELECT ename, dno,
CASE WHEN dno = 10 THEN 'ACC'
WHEN dno = 20 THEN 'RES'
WHEN dno = 30 THEN 'SAL'
WHEN dno = 40 THEN 'OPE'
ELSE 'DEF'
END DNAME FROM employee
ORDER BY dno;

-- ȥ�� �غ���
-- �Ի�⵵�� �� ����ϱ�
SELECT dno, ename, job, SUBSTR(hiredate, 1, 2) ,
SUBSTR(hiredate, -2, 2)
FROM employee
ORDER BY dno ASC ,ename DESC;

-- 4���� �Ի��� ��� ����ϱ�
SELECT *
FROM employee
WHERE SUBSTR(hiredate, 3, 1) = '/';

-- ����� ¦���� ��� ����ϱ�
SELECT *
FROM employee
WHERE MOD(eno, 2) = 0;

-- �Ի��� ����ϱ�
SELECT HIREDATE, TO_CHAR(HIREDATE, 'YY/MON/DAY')
FROM employee;

-- ���� ��ĥ�� �������� ����ϱ�
SELECT TRUNC(SYSDATE - TO_DATE('2011/01/01' , 'YYYY/MM/DD'))
FROM dual;

-- ����� ��� ����ϱ�
SELECT eno, ename,
NVL(manager, 0) MANAGER
FROM employee;

-- �޿� �λ��ϱ�
SELECT eno, ename, job salary,
DECODE(job, 'ANAIYST', salary + 200,
'SALESMAN' , salary +180,
'MANAGER', salary + 150,
'CLERK', salary + 100,
salary) FROM employee;

-- �׷��Լ�
-- ������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ� ����ϱ�
SELECT SUM(salary) AS "�޿��Ѿ�" , MAX(salary), MIN(salary), AVG(salary)
FROM employee;

-- �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�
SELECT MAX(hiredate) , MIN(hiredate)
FROM employee;

-- ������� Ŀ�̼� �Ѿ� ����ϱ�
SELECT SUM(commission) 
FROM employee;

-- �ο� ���� ���ϱ�
-- ��ü ����� �� ���ϱ�
SELECT COUNT(*)
FROM employee;

-- Ŀ�̼��� �޴� ����� �� ���ϱ�
SELECT COUNT(commission) FROM employee;

-- ���� ������ ���� ���ϱ�
SELECT COUNT(DISTINCT job) FROM employee;

-- �׷��Լ��� ����ϴ� ��� SELECT ���� �� �Ǵ� ǥ���Ŀ� �׷��Լ��� �ƴѰ��� ���Խ�Ű�� ������ �߻��Ѵ�.

-- ������ �׷� GROUP BY
-- �μ����� ��� �޿��� ���ؾ� �� ��� GROUP BY ���� ���
-- �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�
SELECT dno "�μ� ��ȣ", avg(salary) "�޿����"
FROM employee 
GROUP BY dno;

-- �׷� �Լ��� GROUP BY �� �ڿ� � Į�� ���� �������� �׷��Լ��� ���������� ������־�� �Ѵ�.
-- GROUP BY �� �������� Į���� ��Ī�� ����� �� ����, �ݵ�� Į������ ����ؾ� �Ѵٴ� �� ����
-- GROUP BY ���� ������� ���� Į���� SELECT ������ ����ϸ� ������ �߻��Ѵ�.

-- ���� Į���� �̿��Ͽ� �׷캰�� �˻��ϱ�
SELECT dno, job, COUNT(*), sum(salary)
FROM employee
GROUP BY dno, job
ORDER BY dno, job;


/* HVING ���� ����Ͽ� ǥ���� �׷��� ����, ���� ������ �������� �׷� ����� ���� �� �� �ִ�.
�׷� �Լ��� ��� �� �� HAVING �� ������ ������ ���ǿ� TRUE�� �׷����� ����� �����Ѵ�.
*/
-- �μ��� �޿� �Ѿ��� 3000 �̻��� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ���ϱ�
SELECT dno, max(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

-- MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ���޺� �޿� �Ѿ� ���ϱ�
SELECT job, COUNT(*), SUM(salary)
FROM employee
WHERE job NOT LIKE '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);

-- �ְ� �޿� ����ϱ�
SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

-- ȥ�� �غ���
-- �޿� �ְ��, ������, �Ѿ� �� ��� �޿� ����ϱ�
SELECT MAX(salary) Maximum,
MIN(salary) Minimum,
SUM(salary) Sum,
ROUND(AVG(salary)) Avg
FROM employee;

-- ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��ձ޿� ����ϱ�
SELECT job job,
MAX(salary) Maximum,
MIN(salary) Minimum,
SUM(salary) Sum,
ROUND(AVG(salary)) Avg
FROM employee
GROUP BY job;