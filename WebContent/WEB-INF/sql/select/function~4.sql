SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate 
FROM employee;

SELECT ename, hiredate, ROUND(sysdate - hiredate) 
FROM employee;

-- ���� ��¥ ǥ���ϱ�
SELECT sysdate FROM dual;

-- ��¥ ����ϱ�
SELECT sysdate -1 ����,
    sysdate ����,
    sysdate +1 ����
FROM dual;

-- �ٹ��ϼ� ����ϱ�
SELECT ename, ROUND(sysdate - hiredate) �ٹ��ϼ�
FROM employee;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

-- ���� Ư�� ��¥(DATE)���� ��(MONTH)�� �������� ������ ��¥ ���ϱ�
SELECT hiredate, TRUNC(HIREDATE, 'MONTH') AS ������¥ FROM employee;

SELECT MONTHS_BETWEEN(SYSDATE, hiredate) FROM employee;

SELECT 
MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd'))
FROM dual;

SELECT
MONTHS-BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE)
FROM dual;

-- ���� �� ������� �ٹ��� ���� �� ���ϱ�
SELECT ename, sysdate, hiredate,
TRUNC(MONTHS_BETWEEN (SYSDATE,HIREDATE))
FROM employee;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

-- ���� �Ի����� 6���� ���� ��¥ ���ϱ�
SELECT ename, hiredate,
ADD_MONTHS(HIREDATE, 6) FROM employee;

SELECT NEXT_DAY(sysdate, '�����') FROM dual;
SELECT NEXT_DAY(sysdate, '�ݿ���') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

SELECT * FROM employee;

SELECT LAST_DAY(sysdate) FROM dual;

SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;

-- ������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
SELECT SYSDATE,
NEXT_DAY(SYSDATE, '�����') FROM dual;

SELECT ename, hiredate,
LAST_DAY(HIREDATE)
FROM employee;