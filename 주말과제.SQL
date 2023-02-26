--  Q1 사원들이 근무하고 있는 근무 부서의 번호를 중복없이 가져오시오.

-- Q2 사원들의 이름과 직무를 다음 양식으로 가져온다. 000 사원의 담당 직무는 XXX 입니다.

-- Q3 각 사원들의 급여액과 급여액에서 1000을 더한 값, 200을 뺀 값, 2를 곱한 값, 2로 나눈 값을 가져오시오.

-- Q4 각 사원의 급여액, 커미션, 급여 + 커미션 액수를 가져오시오.

-- Q5 사원의 이름과 사원 번호를 가져온다.

-- Q6 사원의 이름과 사원 번호, 직무, 급여를 가져온다.

-- Q7 부서 번호와 부서 이름을 가져온다.

-- Q8 부서의 모든 정보를 가져온다.

-- Q9 사원의 모든 정보를 가져온다.

-- Q10 근무 부서가 10번인 사원들의 사원번호, 이름, 근무 부서를 가져온다.

-- Q11 근무 부서 번호가 10번이 아닌 사원들의 사원번호, 이름, 근무 부서 번호를 가져온다.

-- Q12 급여가 1500이상인 사원들의 사원번호, 이름, 급여를 가져온다.

-- Q13 이름이 SMITH 사원의 사원번호, 이름, 직무, 급여를 가져온다.

-- Q14 직무가 SALESMAN인 사원의 사원번호, 이름, 직무를 가져온다.

-- Q15 직무가 CLERK이 아닌 사원의 사원번호, 이름, 직무를 가져온다.

SELECT
    EMPNO,
    ENAME,
    JOB
FROM
    EMP
WHERE
    JOB !='CLERK';
-- Q16 1982년 1월 1일 이후에 입사한 사원의 사원번호, 이름, 입사일을 가져온다.

SELECT
    EMPNO,
    ENAME,
    HIREDATE
FROM
    EMP
WHERE
    TO_CHAR(HIREDATE,
    'YYYY-MM-DD') >= '1982-01-01';
-- Q17 10번 부서에서 근무하고 있는 직무가 MANAGER인 사원의 사원번호, 이름, 근무부서, 직무를 가져온다.

SELECT
    EMPNO,
    ENAME,
    DEPTNO,
    JOB
FROM
    EMP
WHERE
    DEPTNO = 10
    AND JOB ='MANAGER';
-- Q18 입사년도가 1981년인 사원중에 급여가 1500 이상인 사원의 사원번호, 이름, 급여, 입사일을 가져온다.

SELECT
    EMPNO,
    ENAME,
    SAL,
    HIREDATE
FROM
    EMP
WHERE
    TO_CHAR(HIREDATE,
    'YYYY') = '1981'
    AND SAL >=1500;
-- Q19 20번 부서에 근무하고 있는 사원 중에 급여가 1500 이상인 사원의 사원번호, 이름, 부서번호, 급여를 가져온다.

SELECT
    EMPNO,
    ENAME,
    DEPTNO,
    SAL
FROM
    EMP
WHERE
    DEPTNO =20
    AND SAL >=1500;
-- Q20 상관 사원 번호가 7698번인 사원중에 직무가 CLERK인 사원의 사원번호, 이름, 직속상관번호, 직무를 가져온다.

SELECT
    EMPNO,
    ENAME,
    MGR,
    JOB
FROM
    EMP
WHERE
    MGR = 7698
    AND JOB = 'CLERK';
-- Q21 급여가 2000보다 크거나 1000보다 작은 사원의 사원번호, 이름, 급여를 가져온다.
SELECT
    EMPNO,
    ENAME,
    SAL
FROM
    EMP
WHERE
    SAL BETWEEN 1000
    AND 2000;
-- Q22 부서번호가 20이거나 30인 사원의 사원번호, 이름, 부서번호를 가져온다.

SELECT
    EMPNO,
    ENAME,
    DEPTNO
FROM
    EMP
WHERE
    DEPTNO = 20
    OR DEPTNO = 30;
-- Q23 직무가 CLERK, SALESMAN, ANALYST인 사원의 사원번호, 이름, 직무를 가져온다.


SELECT
    EMPNO,
    ENAME,
    JOB
FROM
    EMP
WHERE
    JOB = 'CLERK'
    OR JOB = 'SALESMAN'
    OR JOB = 'ANALYST';
-- Q24 사원 번호가 7499, 7566, 7839가 아닌 사원들의 사원번호, 이름을 가져온다


SELECT
    EMPNO,
    ENAME
FROM
    EMP
WHERE
    EMPNO !=7499
    OR EMPNO !=7566
    OR EMPNO !=7839;
-- Q25 이름이 F로 시작하는 사원의 이름과 사원 번호를 가져온다.

SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    ENAME LIKE 'F%';
-- Q26 이름이 S로 끝나는 사원의 이름과 사원 번호를 가져온다.

SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    ENAME LIKE '%S';
-- Q27 이름에 A가 포함되어 있는 사원의 이름과 사원 번호를 가져온다.

SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    ENAME LIKE '%A%';
-- Q28 이름의 두번째 글자가 A인 사원의 사원 이름, 사원 번호를 가져온다.

SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    ENAME LIKE '_A%';
-- Q29 이름이 4글자인 사원의 사원 이름, 사원 번호를 가져온다.
SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    ENAME LIKE '____';
-- Q30 사원중에 커미션을 받지 않는 사원의 사원번호, 이름, 커미션을 가져온다.


SELECT
    EMPNO,
    ENAME,
    COMM
FROM
    EMP
WHERE
    COMM IS NULL;
-- Q31 회사 대표(직속상관이 없는 사람)의 이름과 사원번호를 가져온다.

SELECT
    ENAME,
    EMPNO
FROM
    EMP
WHERE
    MGR IS NULL;
-- Q32 사원의 사원번호, 이름, 급여를 가져온다. 급여를 기준으로 오름차순 정렬을 한다.


SELECT
    EMPNO,
    ENAME,
    SAL
FROM
    EMP
ORDER BY
    SAL ASC;
-- Q33 사원의 사원번호, 이름, 급여를 가져온다. 사원번호를 기준으로 내림차순 정렬을 한다.

SELECT
    EMPNO,
    ENAME,
    SAL
FROM
    EMP
ORDER BY
    EMPNO DESC;
-- Q34 사원의 사원번호, 이름을 가져온다, 사원의 이름을 기준으로 오름차순 정렬을 한다.

SELECT
    EMPNO,
    ENAME
FROM
    EMP
ORDER BY
    ENAME ASC;
-- Q35 사원의 사원번호, 이름, 입사일을 가져온다. 입사일을 기준으로 내림차순 정렬을 한다.
SELECT
    EMPNO,
    ENAME,
    HIREDATE
FROM
    EMP
ORDER BY
    HIREDATE DESC;
-- Q36 직무가 SALESMAN인 사원의 사원이름, 사원번호, 급여를 가져온다. 급여를 기준으로 오름차순 정렬을 한다.

SELECT
    ENAME,
    EMPNO,
    SAL
FROM
    EMP
WHERE
    JOB = 'SALESMAN'
ORDER BY
    SAL DESC;
-- Q37 1981년에 입사한 사원들의 사원번호, 사원 이름, 입사일을 가져온다. 사원 번호를 기준으로 내림차순 정렬을 한다.

SELECT
    ENAME,
    EMPNO,
    HIREDATE
FROM
    EMP
WHERE
    TO_CHAR(HIREDATE,
    'YYYY') = '1981'
ORDER BY
    EMPNO DESC;
-- Q38 사원의 이름, 급여, 커미션을 가져온다. 커미션을 기준으로 오름차순 정렬을 한다.


SELECT
    ENAME,
    EMPNO,
    SAL,
    COMM
FROM
    EMP
ORDER BY
    COMM ASC;
-- Q39 사원의 이름, 급여, 커미션을 가져온다. 커미션을 기준으로 내림차순 정렬을 한다.

SELECT
    ENAME,
    EMPNO,
    SAL,
    COMM
FROM
    EMP
ORDER BY
    COMM DESC;
-- Q40 전직원의 급여를 2000 삭감하고 삭감한 급여액의 절대값을 구한다.

SELECT
    ABS(SAL-2000)
FROM
    EMP;
-- Q41 급여가 1500 이상인 사원의 급여를 15% 삭감한다. 단 소수점 이하는 버린다.

SELECT
    TRUNC(SAL*0.85)
FROM
    EMP
WHERE
    SAL >=1500;
-- Q42 급여가 2천 이하인 사원들의 급여를 20%씩 인상한다. 단 10의 자리를 기준으로 반올림한다.


SELECT
    ROUND(SAL *1.2,
    -2)
FROM
    EMP
WHERE
    SAL <= 2000;
-- Q43 전 직원의 급여를 10자리 이하를 삭감한다


SELECT
    TRUNC(SAL *1.2,
    -2)
FROM
    EMP;
-- Q44. 각 사원의 부서 이름을 가져온다. ex) 10 : 인사과, 20 : 개발부, 30 : 경원지원팀,    40 : 생산부

SELECT
    ENAME,
    DNAME
FROM
    DEPT D,
    EMP  E
WHERE
    D.DEPTNO = E.DEPTNO;
-- Q45 직급에 따라 인상된 급여액을 가져온다. ex) CLERK : 10% / SALESMAN : 15% / PRESIDENT : 200% / MANAGER : 5% / ANALYST : 20%

SELECT
    CASE JOB
        WHEN 'CLERK' THEN
            SAL *1.1
        WHEN 'SALESMAN' THEN
            SAL *1.15
        WHEN 'PRESIDENT' THEN
            SAL *2
        WHEN 'MANAGER' THEN
            SAL *1.05
        WHEN 'ANALYST' THEN
            SAL *1.2
    END
FROM
    EMP;
-- Q46 급여액 별 등급을 가져온다.  ex) 1000 미만 : C등급 / 1000 이상 2000미만 : B등급 / 2000 이상 : A등급

SELECT
    CASE
        WHEN SAL <1000 THEN
            'C'
        WHEN SAL >=1000 THEN
            'B'
        WHEN SAL >=2000 THEN
            'A'
    END
FROM
    EMP;
-- Q47 직원들의 급여를 다음과 같이 인상한다.  ex) 1000 이하 : 100% / 1000 초과 2000미만 : 50% / 2000 이상 : 200%

SELECT
    CASE
        WHEN SAL <1000 THEN
            SAL*2
        WHEN SAL >=1000 THEN
            SAL*1.5
        WHEN SAL >=2000 THEN
            SAL*3
    END
FROM
    EMP;
-- Q48 사원들의 커미션 총합을 구한다.
SELECT
    SUM(COMM)
FROM
    EMP;
-- Q49 급여가 1500 이상인 사원들의 급여 총합을 구한다.

SELECT
    SUM(SAL)
FROM
    EMP
WHERE
    SAL>=1500;
-- Q50 20번 부서에 근부하고 있는 사원들의 급여 총합을 구한다.

SELECT
    SUM(SAL)
FROM
    EMP
WHERE
    DEPTNO = 20;
-- Q51 직무가 SALESMAN인 사원들의 급여 총합을 구한다.

SELECT
    SUM(SAL)
FROM
    EMP
WHERE
    JOB = 'SALESMAN';
-- Q52 직무가 SALESMAN인 사원들의 이름과 급여총합을 가져온다.

SELECT
    ENAME,
    SUM(SAL)
FROM
    EMP
WHERE
    JOB = 'SALESMAN'
GROUP BY
    ENAME;
-- Q53 전 사원의 급여 평균을 구한다.
SELECT
sum(sal)/ 


-- Q54 커미션을 받는 사원들의 커미션 평균을 구한다.

-- Q55 전 사원의 커미션의 평균을 구한다.

-- Q56 커미션을 받는 사원들의 급여 평균을 구한다.

-- Q57 30번 부서에 근무하고 있는 사원들의 급여 평균을 구한다.

-- Q58 직무가 SALESMAN인 사원들의 급여 + 커미션 평균을 구한다.

-- Q59 사원들의 총 수를 가져온다.

-- Q60 커미션을 받는 사원들의 총 수를 가져온다.

-- Q61 사원들의 급여 최대, 최소값을 가져온다.

-- Q62 각 부서별 사원들의 급여 평균을 구한다.

-- Q63 각 직무별 사원들의 급여 총합을 구한다.

-- Q64 1500 이상 급여를 받는 사원들의 부서별 급여 평균을 구한다.

-- Q65 부서별 평균 급여가 2000이상은 부서의 급여 평균을 가져온다.

-- Q66 부서별 최대 급여액이 3000이하인 부서의 급여 총합을 가져온다.

-- Q67 부서별 최소 급여액이 1000 이하인 부서에서 직무가 CLERK인 사원들의 급여 총합을 구한다

-- Q68 각 부서의 급여 최소가 900이상 최대가 10000이하인 부서의 사원들 중1500이상의 급여를 받는 사원들의 평균 급여액을 가져온다.