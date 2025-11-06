# 특정 조건을 만족하는 물고기별 수와 최대 길이 구하기
SELECT COUNT(FISH_TYPE) AS FISH_COUNT , MAX(LENGTH) AS MAX_LENGTH , FISH_TYPE 
FROM (
SELECT FISH_TYPE, 
CASE WHEN LENGTH <= 10 OR LENGTH IS NULL THEN 10
ELSE LENGTH END AS LENGTH                    
FROM FISH_INFO A
) F
GROUP BY FISH_TYPE 
HAVING AVG(LENGTH) >= 33
ORDER BY FISH_TYPE

/* 
조건1 : FISH_INFO에서 평균 길이가 33cm 이상인 물고기들을 종류별로 분류하여 잡은 수, 최대 길이, 물고기의 종류를 출력하는 SQL문을 작성해주세요. 
조건2 : 결과는 물고기 종류에 대해 오름차순으로 정렬
조건3 : 10cm이하의 물고기들은 10cm로 취급하여 평균 길이를 구해주세요.

핵심 스킬1 : IS NULL과 CASE WHEN 을 이용하여 10cm 이하의 물고기들은 10cm로 취급하여 평균 길이를 구함 (조건3)
핵심 스킬2 : HAVING 을 이용하여 평균 길이가 33cm 이상인 물고기들을 필터링 (조건1)
핵심 스킬3 : ORDER BY 를 이용하여 물고기 종류에 대해 오름차순으로 정렬 (조건2)

*/
