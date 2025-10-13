# 주문량이 많은 아이스크림들 조회하기

SELECT T.FLAVOR
FROM (
SELECT FH.SHIPMENT_ID, FH.FLAVOR, FH.TOTAL_ORDER
FROM FIRST_HALF FH
UNION ALL
SELECT J.SHIPMENT_ID, J.FLAVOR, J.TOTAL_ORDER
FROM JULY J
) T
GROUP BY T.FLAVOR
ORDER BY SUM(TOTAL_ORDER) DESC
limit 3

/* 
조건1 : 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문

핵심 스킬1 : FIRST_HALF, JULY 테이블의 컬럼 갯수와 구성을 같으므로, UNION ALL 로 1개 테이블로 통합
핵심 스킬2 : LIMIT 3 를 사용하여 상위 3개만 추출 
*/