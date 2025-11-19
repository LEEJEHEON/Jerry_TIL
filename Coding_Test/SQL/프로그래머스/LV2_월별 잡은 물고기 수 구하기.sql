# 월별 잡은 물고기 수 구하기 
SELECT COUNT(*) AS FISH_COUNT , MONTH(TIME) AS MONTH
FROM FISH_INFO 
GROUP BY MONTH
ORDER BY MONTH


/* 
조건1 : 월별 잡은 물고기의 수와 월을 출력하는 SQL문

핵심 스킬1 : MONTH 함수를 이용하여 월만 추출 
*/