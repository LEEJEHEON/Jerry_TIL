# LV2_성분으로 구분한 아이스크림 총 주문량
SELECT I.INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM ICECREAM_INFO I
INNER JOIN FIRST_HALF F
ON I.FLAVOR = F.FLAVOR
GROUP BY I.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER

/* 
조건1 : 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문

핵심 스킬1 : SUM 을 하여 총 주문량 추출 

*/