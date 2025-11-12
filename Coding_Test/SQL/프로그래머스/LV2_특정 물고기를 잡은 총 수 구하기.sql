# 특정 물고기를 잡은 총 수 구하기 

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO F
INNER JOIN FISH_NAME_INFO FI
ON F.FISH_TYPE = FI.FISH_TYPE
WHERE FI.FISH_NAME IN ('BASS','SNAPPER')

/* 
조건1 : FISH_INFO 테이블에서 잡은 BASS와 SNAPPER의 수를 출력하는 SQL 문

핵심 스킬1 : INNER JOIN을 이용해서 FISH_INFO 테이블과 FISH_NAME_INFO 테이블을 조인
핵심 스킬2 : WHERE 조건을 이용해서 BASS와 SNAPPER를 필터링
핵심 스킬3 : COUNT(*)를 이용해서 잡은 수를 출력
*/
