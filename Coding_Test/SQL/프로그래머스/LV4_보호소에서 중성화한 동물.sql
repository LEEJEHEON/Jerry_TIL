# 보호소에서 중성화한 동물

SELECT AI.ANIMAL_ID , AO.ANIMAL_TYPE, AO.NAME
FROM ANIMAL_INS AI
INNER JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE LIKE '%Intact%'
AND AO.SEX_UPON_OUTCOME NOT LIKE '%Intact%'
ORDER BY AI.ANIMAL_ID


/* 
조건1 : 보호소에 들어올 당시에는 중성화1되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문
추가 자료 : 중성화를 거치지 않은 동물은 성별 및 중성화 여부에 Intact, 중성화를 거친 동물은 Spayed 또는 Neutered라고 표시되어있음

핵심 스킬1 : LIKE 연산자를 사용해서 중성화 여부를 확인함

*/