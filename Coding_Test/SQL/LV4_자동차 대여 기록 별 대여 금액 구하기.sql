# 자동차 대여 기록 별 대여 금액 구하기

WITH RENTAL_HISTORY AS  (
    SELECT RH.HISTORY_ID ,
    RH.CAR_ID , 
	(CASE WHEN DATEDIFF(RH.end_date, RH.start_date)+1 >= 90 THEN '90일 이상'
	WHEN DATEDIFF(RH.end_date, RH.start_date)+1 >= 30 THEN '30일 이상'
	WHEN DATEDIFF(RH.end_date, RH.start_date)+1 >= 7 THEN '7일 이상'
	ELSE '7일 미만' END) AS RENTAL_DATE,
    DATEDIFF(RH.end_date, RH.start_date)+1 AS DURATION_DATE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY RH
) 
SELECT RH.HISTORY_ID as HISTORY_ID, 
    CAST(RH.DURATION_DATE*(CC.DAILY_FEE*((100-IFNULL(DP.DISCOUNT_RATE,0))/100)) AS UNSIGNED) AS FEE 
FROM RENTAL_HISTORY RH
INNER JOIN CAR_RENTAL_COMPANY_CAR CC
ON RH.CAR_ID = CC.CAR_ID 
AND CC.CAR_TYPE = '트럭'
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN DP
ON CC.CAR_TYPE = DP.CAR_TYPE
AND RH.RENTAL_DATE = DP.DURATION_TYPE
ORDER BY FEE DESC , HISTORY_ID DESC 



/* 
조건1 : 자동차 종류가 '트럭'인 자동차의 대여 기록에 대해서 대여 기록 별로 대여 금액(컬럼명: FEE)을 구하여 대여 기록 ID와 대여 금액 리스트를 출력하는 SQL문

핵심 스킬1 : DATEDIFF를 이용하여 두 날짜의 차이를 계산
핵심 스킬2 : CASE WHEN 을 이용하여 대여 기간에 따라 할인율을 계산 
핵심 스킬3 : CASE WHEN 을 통해 나온 대여 기간을 LEFT JOIN 하여 할인율을 뽑음
핵심 스킬4 : IFNULL을 이용하여 할인율이 없는 경우 0으로 처리
핵심 스킬5 : CAST를 이용하여 대여 금액의 정수값만 출력되도록 함

힘들었던 점1 : (RH.end_date-RH.start_date+1) 로 날짜를 계산할려고 함. 
힘들었던 점2 : 할인율을 어떻게 뽑아야 될지 막막 했음. (솔직히 지금도 할인율이 더 추가되면 쿼리 수정이 필요함) - 해결 필요   

*/