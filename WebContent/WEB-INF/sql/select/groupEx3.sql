SELECT ename, dno
FROM employee
WHERE dno = (SELECT dno
             FROM employee
             WHERE ename='SCOTT');
            
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
                
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno -- ��������� �� dno���� �ּ� salary�� ���� ��
HAVING MIN(salary) > (SELECT MIN(salary) -- HAVING �׷��Լ��� ������� �� ������ �ִ� ��
                      FROM employee
                      WHERE dno = 30); -- 30�� �μ��� �ּ� ���� ���� ū ������ ���� �μ��� ��ȣ,������ ���ϴ� ����

-- ���� �� ���� ���� IN, ANY, SOME, ALL, EXIST
-- ������ ���� ���� ������ �� ��� ������ �� �ִ� �����ڵ�

-- 1. IN ~�� ���ԵǾ�������, ~�� �ϳ��̸�
SELECT MIN(salary)
FROM employee
GROUP BY dno;

SELECT eno, ename, salary
FROM employee 
WHERE salary IN (SELECT MIN(salary)
                FROM employee
                GROUP BY dno); 
-- (950, 800, 1300); -- salayt�� 950, 800, 1300 �� �ϳ���

SELECT  eno, ename, salary, dno
FROM employee
WHERE(dno, salary) IN (SELECT dno, MIN(salary) -- IN�����ڴ� �ϳ��� �÷����� �ƴ� �ΰ��� �÷����� ��밡��, �� ���� �÷��� ��ġ�ؾ� ��
                        FROM employee
                        GROUP BY dno);

-- 2.ANY, SOME ���� ������, ���� ����� ���� / �ϳ��� ������ true
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (1600, 1250, 1250, 1500); -- < �ε�ȣ�� ���� ���̰� �Ǹ� �ְ����� �۰ԵǸ� ����� �����ϰ� ��
-- ANY���� sub������ ��, ����� ���� ���� �� �� ����

SELECT salary
FROM employee
WHERE job='SALESMAN';

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (SELECT salary
FROM employee
WHERE job='SALESMAN');

-- 3.ALL : ��� �����ؾ� ��
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL(SELECT salary 
               FROM employee
               WHERE job='SALESMAN')
AND job <> 'SALESMANN';
               

SELECT salary 
FROM employee
WHERE job='SALESMAN';

-- �����ȣ�� 7788�� ��� ǥ���ϱ�
SELECT eno, ename, job
FROM employee
WHERE job = (SELECT job
             FROM employee
             WHERE eno=7788); -- eno�� 7788���� ����� job�� ���� job�� ������ �ִ� ���

-- �����ȣ�� 7499�� ������� �޿��� ���� ����� ǥ��(����̸�, ������)
SELECT ename, job
FROM employee
WHERE salary > (SELECT salary
               FROM employee
               WHERE eno = '7499'); 

-- �ּ� �޿��� �޴� ����� �̸�, ������ �� �޿��� ǥ���Ͻÿ�.(�׷��Լ� ���)
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
                
-- ��� �޿��� ���� ���� ����� ��� ������ ã�� ���ް� ��� �޿��� ǥ���Ͻÿ�.
SELECT job, ROUND(AVG(salary),1)
FROM employee
GROUP BY job
HAVING ROUND(avg(salary), 1) = (SELECT MIN(ROUND(AVG(salary), 1))
                                FROM employee
                                GROUP BY job);

-- �� �μ��� �ּ� �޿��� �޴� ����� �̸�, �޿�, �μ���ȣ�� ǥ��
SELECT ename, salary, dno
FROM employee
WHERE salary IN (SELECT MIN(salary)
                FROM employee
                GROUP BY dno);

-- ��� ������ �м���(ANALYST)�� ������� �޿��� �����鼭 ������ �м���(ANALYST)��
-- �ƴ� ������� ǥ��
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY(SELECT salary
                   FROM employee
                   WHERE job='ANALYST')
AND job<>'ANALYST';

-- ���������� ���� ����� �̸��� ǥ��
SELECT ename
FROM employee
WHERE eno IN(SELECT eno
             FROM employee
             WHERE manager is NULL);
             
-- ���������� �ִ� ��� ǥ��
SELECT ename
FROM employee
WHERE eno IN(SELECT eno
            FROM employee
            WHERE manager IS NOT null);
            
-- BLAKE�� ������ �μ��� ���� ����� �̸��� �Ի����� ǥ���ϴ� ����
SELECT ename, hiredate
FROM employee
WHERE dno = (SELECT dno
            FROM employee
            WHERE ename='BLAKE')
AND ename<>'BLAKE';            
           
-- �޿��� ��� �޿� ���� ���� ������� �����ȣ�� �̸��� ǥ���ϵ� ����� �޿��� ���ؼ� ������������ ����
SELECT eno, ename
FROM employee
WHERE salary > (SELECT AVG(salary)
                FROM employee)
ORDER BY salary asc;

-- �̸��� K�� ���Ե� ����� ���� �μ����� ���ϴ� ����� �����ȣ�� �̸��� ǥ��
SELECT eno, ename
FROM employee
WHERE dno in (SELECT dno
             FROM employee
             WHERE ename LIKE '%K%');
             
-- �μ� ��ġ�� DALLAS�� ����� �̸��� �μ���ȣ �� �������� ǥ��
SELECT ename, dno, job
FROM employee
WHERE dno = (SELECT dno
             FROM department
             WHERE loc = 'DALLAS');
             
-- KING���� �����ϴ� ����� �̸��� �޿��� ǥ��
SELECT ename, salary
FROM employee
WHERE manager = (SELECT eno
                FROM employee
                WHERE ename = 'KING');
                
-- RESEARCH �μ��� ����� ���� �μ���ȣ, ����̸� �� �������� ǥ��
SELECT eno, ename, job
FROM employee
WHERE dno = (SELECT dno
            FROM department
            WHERE dname = 'RESEARCH');
                
-- ��� �޿� ���� ���� �޿��� �ް� �̸��� M�� ���Ե� ����� ���� �μ����� �ٹ��ϴ� ����� �����ȣ, �̸�, �޿��� ǥ��
SELECT eno, ename, salary
FROM employee
WHERE salary > (SELECT avg(salary)
                FROM employee)
AND dno IN(SELECT dno                
           FROM employee
           WHERE ename LIKE '%M%');

-- ��� �޿��� ���� ���� ����
SELECT job, avg(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
                FROM employee
                GROUP BY job);
                
-- ��� ������ MANAGER�� ����� �Ҽӵ� �μ��� ������ �μ��� ����� ǥ��
SELECT eno, dno, job, ename
FROM employee
WHERE eno IN (SELECT manager
             FROM employee)
ORDER BY eno;
