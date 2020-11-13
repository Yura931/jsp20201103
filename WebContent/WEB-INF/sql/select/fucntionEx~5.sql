-- date to char
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- ���� ��¥ �Լ� ����ϱ�
SELECT ename, hiredate,
TO_CHAR(HIREDATE, 'YY-MM'),
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;

-- ���� ��¥�� �ð� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM dual;

-- number to char 
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(456789, '999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
-- �ڸ����� �� ä������ ������ 0���� �����ؼ� ���
SELECT TO_CHAR(9956789, 'L999,999,999.000') FROM dual;
-- ��ȭ��ȣ, �Ҽ���

-- �޿��� ����ϸ鼭 ��ȭ ��ȣ �����̱�
SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;

SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;

SELECT 
TO_CHAR(
TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS')
, 'YYYY-MM-DD HH:MI:SS')
FROM dual;

-- char to number 
SELECT TO_NUMBER('200,000', '999,999') FROM dual;
SELECT TO_NUMBER('200000') FROM dual;

-- ���� 1981 2�� 20�Ͽ� �Ի��� ��� �˻��ϱ� 
SELECT ename, hiredate FROM employee
WHERE hiredate=198119229;

SELECT ename, hiredate
FROM employee
WHERE hiredate=TO_DATE('1981-02-20', 'YYYY-MM-DD');

-- ���� ���� ������ ���� ����
SELECT '100,000 - 50,000'
FROM dual;

-- ��ġ ���·� ��ȯ �� ����
SELECT TO_NUMBER('100,000', '999,999')
- TO_NUMBER('50,000', '99,999') 
FROM dual;

-- ȥ�� �غ��� --
-- SUBSTR �Լ��� ����Ͽ� ������� �Ի��� �⵵�� �Ի��� �޸� ���
SELECT SUBSTR(HIREDATE, 1, 2) �⵵,
SUBSTR(HIREDATE, 4, 2) ��
FROM employee;

-- SUBSTR �Լ��� ����Ͽ� 4���� �Ի��� ����� ����Ͻÿ�.
SELECT * FROM employee
WHERE SUBSTR(HIREDATE, 4, 2) = '04';

-- MOD �Լ��� ����Ͽ� �����ȣ�� ¦���� ����� ����Ͻÿ�.
SELECT * FROM employee
WHERE MOD(eno, 2) = 0;

-- �Ի����� ������ 2�ڸ�(YY), ���� ����(MON)�� ǥ���ϰ� ������ ���(DY)�� �����Ͽ� ����Ͻÿ�.
SELECT HIREDATE, TO_CHAR(HIREDATE,'YY/MON/DY')
FROM employee;

-- ���� ��ĥ�� �������� ����Ͻÿ�. ���� ��¥���� ���� 1�� 1���� �� ����� ����ϰ�
-- TO_DATE �Լ��� ����Ͽ� ������ ���� ��ġ ��Ű�ÿ�
SELECT TRUNC(SYSDATE - TO_DATE('2011/01/01',  'YYYY/MM/DD'))
FROM dual;