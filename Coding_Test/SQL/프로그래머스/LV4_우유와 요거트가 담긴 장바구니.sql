# 우유와 요거트가 담긴 장바구니

SELECT A.CART_ID
FROM (
SELECT DISTINCT CP.NAME, CP.CART_ID
FROM CART_PRODUCTS CP
WHERE CP.NAME IN ('Milk', 'Yogurt')
) A 
GROUP BY A.CART_ID
HAVING COUNT(A.NAME) > 1 
ORDER BY CART_ID

/* 
조건1 : 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회

핵심 스킬1 : 서브 쿼리를 이용하여 우유와 요거트 값을 구매한 CART_ID 와 NAME 값을 중복 제거하고 조회를 먼저함 
(이유 : 1개의 카트에서 우유 혹은 요거트만 2개이상 구매한 것을 배제하기 위해 )
핵심 스킬2 : HAVING을 통해 같이 2개 이상인 것만 CART_ID를 추출함 
> 2개 이상이라는 것은 Milk 와 Yogurt 가 같이 있는 것을 의미함 

*/
