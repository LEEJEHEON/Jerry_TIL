# 가격대 별 상품 개수 구하기

SELECT TRUNCATE(PRICE,-4) AS PRICE_GROUP , COUNT(*) AS PRODUCTS
FROM PRODUCT 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP

/* 
조건1 : PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문

핵심 스킬1 : TRUNCATE을 이용하여 만원단위 데이터는 내림으로 하여 단위를 구하고 groupby 진행함 
*/
