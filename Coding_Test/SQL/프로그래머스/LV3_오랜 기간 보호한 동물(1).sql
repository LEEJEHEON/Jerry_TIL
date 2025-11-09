# 오랜 기간 보호한 동물(1)

SELECT AI.NAME, AI.DATETIME
FROM ANIMAL_INS AI 
LEFT JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NULL 
ORDER BY DATEDIFF(AI.DATETIME, AO.DATETIME) DESC , AI.DATETIME
LIMIT 3 

/* 
조건1 : 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문

핵심 스킬1 : LEFT JOIN과 WHERE 조건을 사용하여 아직 입양을 못 간 동물을 찾음
핵심 스킬2 : DATEDIFF 함수를 사용하여 보호 기간을 계산하고, DESC 정렬하여 가장 오래 보호소에 있었던 동물을 찾음
핵심 스킬3 : limit3 를 사용하여 가장 오래 보호소에 있었던 동물 3마리만 찾음

*/
