# 서울에 위치한 식당 목록 출력하기

SELECT RI.REST_ID, RI.REST_NAME , RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS, ROUND(AVG(IFNULL(RR.REVIEW_SCORE,0)),2) AS SCORE
FROM REST_INFO RI
INNER JOIN REST_REVIEW RR 
ON RI.REST_ID = RR.REST_ID
WHERE RI.ADDRESS LIKE '서울%' 
GROUP BY RI.REST_ID, RI.REST_NAME , RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS
ORDER BY SCORE DESC , RI.FAVORITES DESC 


/* 
조건1 : 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회
조건2 : 리뷰 평균점수는 소수점 세 번째 자리에서 반올림

핵심 스킬1 : AVG 안에 NULL 이 있다면 NULL값 제외하고 평균 점수 계산하기에 IFNULL로 0으로 처리
핵심 스킬2 : 데이터 안에 서울특별시, 서울시 등 서울을 다양하게 표현하고 있으므로 LIKE 연산자를 통해 서울 포함 여부 확인

*/
