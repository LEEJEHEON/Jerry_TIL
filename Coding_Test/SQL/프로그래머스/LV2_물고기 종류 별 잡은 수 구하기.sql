# 물고기 종류 별 잡은 수 구하기

SELECT COUNT(*) AS FISH_COUNT , FM.FISH_NAME
FROM FISH_INFO FI
INNER JOIN FISH_NAME_INFO FM
ON FI.FISH_TYPE = FM.FISH_TYPE
GROUP BY FM.FISH_NAME
ORDER BY FISH_COUNT DESC 

/* 
조건1 : FISH_NAME_INFO에서 물고기의 종류 별 물고기의 이름과 잡은 수를 출력하는 SQL문

핵심 스킬1 : INNER JOIN을 이용해서 FISH_INFO 테이블과 FISH_NAME_INFO 테이블을 조인
핵심 스킬2 : GROUP BY를 이용해서 물고기의 종류 별로 그룹화
핵심 스킬3 : COUNT(*)를 이용해서 잡은 수를 출력

*/



