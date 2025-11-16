# 자동차 평균 대여 기간 구하기
SELECT DISTINCT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE,START_DATE))+1,1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID 
HAVING AVG(DATEDIFF(END_DATE,START_DATE))+1 >= 7 
ORDER BY AVERAGE_DURATION DESC , CAR_ID DESC

/* 
조건1 : CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문

핵심 스킬1 : AVG 함수를 이용하여 평균 대여 기간을 계산 또한 +1 을 하여 시작일 당일도 포함되도록 함 
핵심 스킬2 : HAVING 을 이용하여 평균 대여 기간이 7일 이상인 자동차들을 필터링 

*/
