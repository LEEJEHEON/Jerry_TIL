# 대장균의 크기에 따라 분류하기 2

SELECT ID, 
CASE WHEN NT = 1 THEN 'CRITICAL' 
WHEN NT = 2 THEN 'HIGH' 
WHEN NT = 3 THEN 'MEDIUM' 
WHEN NT = 4 THEN 'LOW' 
END AS COLONY_NAME
FROM (
SELECT ID,
NTILE(4) OVER(ORDER BY SIZE_OF_COLONY DESC)  AS NT
FROM ECOLI_DATA
) A 
ORDER BY ID ASC


/* 
조건1 : 대장균 개체의 크기를 내름차순으로 정렬했을 때 
상위 0% ~ 25% 를 'CRITICAL', 
26% ~ 50% 를 'HIGH', 
51% ~ 75% 를 'MEDIUM',
76% ~ 100% 를 'LOW' 
라고 분류합니다. 대장균 개체의 ID(ID) 와 분류된 이름(COLONY_NAME)을 출력하는 SQL 문

핵심 스킬1 : NTILE 함수를 이용하여 분류하여 출력 
*/

/* 
추가 내용 : percent_rank() 함수를 이용하여 분류하여 출력할 경우 0~1 값으로 분류를 하기에 예민함. 하지만 ntile 함수는 딱 몇 개로 나누어서 분류를 하기에 더 정확함.

SELECT ID, 
CASE WHEN RANK_VALUE <= 0.25 THEN 'CRITICAL' 
WHEN RANK_VALUE <= 0.5 THEN 'HIGH'
WHEN RANK_VALUE <= 0.75 THEN 'MEDIUM'
WHEN RANK_VALUE <= 1 THEN 'LOW'
END AS COLONY_NAME
FROM (
SELECT ID,
ROUND(percent_rank() OVER(ORDER BY SIZE_OF_COLONY DESC),2) AS RANK_VALUE
FROM ECOLI_DATA
) A
ORDER BY ID ASC

*/ 
