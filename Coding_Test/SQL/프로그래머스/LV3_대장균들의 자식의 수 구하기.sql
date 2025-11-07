# 대장균들의 자식의 수 구하기

SELECT E.ID, COUNT(P.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA E
LEFT JOIN ECOLI_DATA P 
ON E.ID = P.PARENT_ID
GROUP BY E.ID, P.PARENT_ID
ORDER BY E.ID ASC

/* 
조건1 : 대장균 개체의 ID(ID)와 자식의 수(CHILD_COUNT)를 출력하는 SQL 문
조건2 : 자식이 없다면 자식의 수는 0으로 출력

핵심 스킬1 : LEFT JOIN을 이용하여 자식의 수를 추출
*/
