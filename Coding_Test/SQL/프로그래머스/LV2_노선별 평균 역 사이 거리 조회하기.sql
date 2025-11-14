# 노선별 평균 역 사이 거리 조회하기

SELECT ROUTE, 
CONCAT(ROUND(SUM(D_BETWEEN_DIST),1),'km') AS TOTAL_DISTANCE , 
CONCAT(ROUND(AVG(IFNULL(D_BETWEEN_DIST,0)),2),'km') AS AVERAGE_DISTANCE
FROM  SUBWAY_DISTANCE 
GROUP BY ROUTE 
ORDER BY SUM(D_BETWEEN_DIST) DESC

/* 
조건1 : SUBWAY_DISTANCE 테이블에서 노선별로 노선, 총 누계 거리, 평균 역 사이 거리를 노선별로 조회하는 SQL문

핵심 스킬1 : IFNULL을 이용하여 평균 역 사이 거리가 없는 경우 0으로 처리
*/
