# 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기

WITH CAR_RENT AS ( 
SELECT CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE <= DATE_FORMAT('2022-10-16','%Y-%m-%d') 
AND END_DATE >= DATE_FORMAT('2022-10-16','%Y-%m-%d')
) 
SELECT C.CAR_ID, 
    CASE WHEN CR.CAR_ID IS NULL THEN '대여 가능'
    ELSE '대여중'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY C
LEFT JOIN CAR_RENT CR 
ON C.CAR_ID = CR.CAR_ID
GROUP BY C.CAR_ID
ORDER BY C.CAR_ID DESC 

/* 
조건1 : CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문

핵심 스킬1 : WITH 문을 이용하여 2022년 10월 16일에 대여 중인 자동차 ID만 추출 
핵심 스킬2 : LEFT JOIN을 이용하여 대여 가능한 자동차와 대여중인 자동차 데이터 연결
핵심 스킬3 : LEFT JOIN으로 인하여 데이터가 없는건 대여 가능이고, 있는건 대여중 으로 구별하여 CASE 문 작성함 

* 맨 처음에는 HISTORY_ID 혹은 END_DATE를 이용하여 마지막값 가지고 선별을 하였는데, 알고 보니, 10/16 이후에 데이터가 또 쌓이면 10/16 값이 묻혀진다는 사실을 깨달음 

*/
