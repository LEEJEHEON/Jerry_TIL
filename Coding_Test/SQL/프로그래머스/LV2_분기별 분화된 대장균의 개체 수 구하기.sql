# 분기별 분화된 대장균의 개체 수 구하기

SELECT CONCAT(CASE WHEN MONTH(DIFFERENTIATION_DATE) < 4 THEN 1 
            WHEN MONTH(DIFFERENTIATION_DATE) < 7 THEN 2 
            WHEN MONTH(DIFFERENTIATION_DATE) < 10 THEN 3 
            WHEN MONTH(DIFFERENTIATION_DATE) < 13 THEN 4 
            END , 'Q') AS QUARTER , COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA 
GROUP BY QUARTER
ORDER BY QUARTER

/* 
조건1 : 각 분기(QUARTER)별 분화된 대장균의 개체의 총 수(ECOLI_COUNT)를 출력하는 SQL 문

핵심 스킬1 : CASE WHEN 을 이용하여 분기별 분화된 대장균의 개체의 총 수를 출력

* 원래는 NTILE 함수를 사용하여 MONTH 기준 4그룹으로 등분할려고 했으나 실패함 

*/