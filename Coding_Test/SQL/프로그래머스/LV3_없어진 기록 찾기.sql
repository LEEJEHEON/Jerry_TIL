# 없어진 기록 찾기 

SELECT AO.ANIMAL_ID , AO.NAME 
FROM ANIMAL_OUTS AO
LEFT JOIN ANIMAL_INS AI
ON AO.ANIMAL_ID = AI.ANIMAL_ID
WHERE AI.ANIMAL_ID IS NULL 
ORDER BY AO.ANIMAL_ID

/* 
조건1 : 천재지변으로 인해 일부 데이터가 유실되었습니다. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문


핵심 스킬1 : OUTER JOIN을 사용하여 AO를 기준으로 JOIN을 함. 그리고 INS의 NULL 값만 찾아서 출력함

*/
