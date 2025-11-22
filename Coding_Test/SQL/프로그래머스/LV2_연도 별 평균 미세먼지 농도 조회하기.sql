# 연도 별 평균 미세먼지 농도 조회하기
select year(ym) as YEAR, 
ROUND(AVG(PM_VAL1),2) AS PM10 ,
ROUND(AVG(PM_VAL2),2) AS 'PM2.5'
From air_pollution
where location1 ="경기도" and location2 = "수원"
group by YEAR
ORDER BY YEAR
/* 
조건1 : AIR_POLLUTION 테이블에서 수원 지역의 연도 별 평균 미세먼지 오염도와 평균 초미세먼지 오염도를 조회하는 SQL문

핵심 스킬1 : YEAR 함수로 연도 추출
*/
