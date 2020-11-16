SELECT *FROM employee;
SELECT ename, salary, commission, salary + commission as sum
FROM employee;

SELECT ename, commission, NVL(commission, 0) FROM employee;

-- ���� NVL�� NULL �� ó���ϱ�
SELECT ename, salary, commission, 
NVL(commission, 0), salary * 12 + NVL(commission, 0)
FROM employee
ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0)
FROM employee;

-- NVL2�� NULL �� ó���ϱ�
SELECT ename, salary, commission,
NVL2(commission, salary * 12 + commission, salary*12)
FROM employee
ORDER BY job;

SELECT NULLIF('a','a') FROM dual;
SELECT NULLIF ('a','b') FROM dual;

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

-- COALESCE�� NULL �� ó���ϱ�
SELECT ename, salary, commission,
COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;

SELECT ename, dno, 
DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF')
FROM employee;

-- DECODE�� �μ��̸� ����ϱ�
SELECT ename, dno,
DECODE(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERATIONS', 'DEFAULT') AS DNAME
FROM employee
ORDER BY dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0'
                      END
FROM employee;
                 
-- CASE�� �μ��̸� ����ϱ�
SELECT ename, dno,
CASE WHEN dno=10 THEN 'ACCOUNTING'
     WHEN dno=20 THEN 'RESEARCH'
     WHEN dno=30 THEN 'SALES'
     WHEN dno=40 THEN 'OPERATIONS'
     ELSE 'DEFAULT'
END AS DNAME
FROM employee
ORDER BY dno;

-- ȥ���غ���
-- ������� ��� ����� ����ϵ� ����� ���� ����� ���ؼ��� NULL �� ��� 0���� ����Ͻÿ�.
SELECT eno, ename,
NVL2(manager,manager,0) AS MANAGER
FROM employee;

-- DECODE �Լ��� ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�.
-- ������ 'ANAIYST'�� ����� 200, 'SALESMAN'�� ����� 180, 'MANAGER'�� ����� 150, 'CLERK'�� ����� 100�� �λ��Ͻÿ�.
SELECT eno, ename, job, salary,
DECODE(JOB, 'ANALYST', salary+200,
            'SALESMAN', salary+180,
            'MANAGER', salary+150,
            'CLERK', salary+100,
            salary) AS update_salary
FROM employee;            

SELECT * FROM employee;

SELECT eno, ename, job, salary, NVL(commission,0) FROM employee;

SELECT eno, ename, job, salary, NVL2(commission, salary * 12, NVL(commission,0)) 
FROM employee ORDER BY eno;