# 재구매가 일어난 상품과 회원 리스트 구하기

SELECT DISTINCT A.USER_ID , A.PRODUCT_ID 
FROM ( 
SELECT ROW_NUMBER() OVER(PARTITION BY USER_ID, PRODUCT_ID ORDER BY SALES_DATE) AS RN , USER_ID, PRODUCT_ID, SALES_DATE
FROM ONLINE_SALE 
) A 
WHERE A.RN > 1 
ORDER BY A.USER_ID , A.PRODUCT_ID DESC

/* 
조건1 : ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문

핵심 스킬1 : ROW_NUMBER() 을 통해 동일한 회원이 동일한 상품을 재구매한 데이터를 구함
핵심 스킬2 : DISTINCT를 통해 중복된 데이터를 제거함

*/
