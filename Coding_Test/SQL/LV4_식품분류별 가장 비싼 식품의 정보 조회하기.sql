# 프로그래머스 Level 4 LV4_식품분류별 가장 비싼 식품의 정보 조회하기


SELECT A.CATEGORY, A.PRICE AS MAX_PRICE , A.PRODUCT_NAME
FROM(
SELECT F.CATEGORY, F.PRICE , F.PRODUCT_NAME , ROW_NUMBER() OVER(PARTITION BY F.CATEGORY ORDER BY F.PRICE DESC ) AS RNK 
FROM FOOD_PRODUCT F
WHERE F.CATEGORY IN ('과자','국','김치','식용유')
) A 
WHERE A.RNK = 1
ORDER BY A.PRICE DESC


/* 
조건1 : 식품분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회
조건2 : 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력

핵심 스킬1 : ROW_NUMBER 이용하여 각 분류별 가격이 제일 비싼 식품을 추출

*/
