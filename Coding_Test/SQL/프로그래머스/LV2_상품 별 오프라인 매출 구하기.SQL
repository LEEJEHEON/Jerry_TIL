# 상품 별 오프라인 매출 구하기
SELECT P.PRODUCT_CODE , P.PRICE * SUM(O.SALES_AMOUNT) AS SALES
FROM OFFLINE_SALE O
INNER JOIN PRODUCT P
ON O.PRODUCT_ID = P.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC , P.PRODUCT_CODE

/* 
조건1 : PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문

핵심 스킬1 : SUM 을 하여 상품의 판매량을 합친 뒤에 값이랑 곱해서 매출액을 구함 

*/