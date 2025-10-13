# 년,월,성별 별 상품 구매 회원 수 구하기

SELECT YEAR(OS.SALES_DATE) as YEAR , 
MONTH(OS.SALES_DATE) as MONTH , 
US.GENDER ,
COUNT(DISTINCT OS.USER_ID) AS USERS
FROM ONLINE_SALE OS
INNER JOIN USER_INFO US
ON OS.USER_ID = US.USER_ID 
AND US.GENDER IS NOT NULL
GROUP BY YEAR, MONTH, US.GENDER 
ORDER BY YEAR, MONTH, GENDER


/* 
조건1 : 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문
조건2 : 결과는 년, 월, 성별을 기준으로 오름차순 정렬

핵심 스킬1 : ONLINE_SALE 판매 테이블이랑 조인을 하면서 COUNT를 하면 중복값이 생김. 그래서 DISTINCT를 통해 고유한 구매 회원수만 카운트함

*/
