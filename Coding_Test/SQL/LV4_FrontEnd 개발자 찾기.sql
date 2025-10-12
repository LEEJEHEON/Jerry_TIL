# FrontEnd 개발자 찾기

SELECT DISTINCT D.ID  , D.EMAIL, D.FIRST_NAME , D.LAST_NAME 
FROM DEVELOPERS D
INNER JOIN SKILLCODES S
ON D.SKILL_CODE & S.CODE = S.CODE 
WHERE S.CATEGORY = 'Front End'
ORDER BY D.ID

/* 
조건1 : DEVELOPERS 테이블에서 Front End 스킬을 가진 개발자의 정보를 조회하려 합니다. 조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문

핵심 스킬1 : 비트 AND 연산(&)을 통해 s.CODE의 모든 비트가 d.SKILL_CODE 안에도 켜져 있는지 확인

*/