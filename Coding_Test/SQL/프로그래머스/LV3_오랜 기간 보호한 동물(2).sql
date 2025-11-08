# 오랜 기간 보호한 동물(2)

SELECT AI.ANIMAL_ID , AI.NAME
FROM ANIMAL_OUTS AO
INNER JOIN ANIMAL_INS AI
ON AO.ANIMAL_ID = AI.ANIMAL_ID 
ORDER BY DATEDIFF(AO.DATETIME,AI.DATETIME) DESC 
LIMIT 2

/* 
조건1 : 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문


핵심 스킬1 : DATEDIFF 함수를 사용하여 보호 기간을 계산하고, DESC 정렬하여 가장 긴 보호 기간을 찾음
핵심 스킬2 : limit2 를 사용하여 가장 긴 보호 기간 2개만 찾음

*/
