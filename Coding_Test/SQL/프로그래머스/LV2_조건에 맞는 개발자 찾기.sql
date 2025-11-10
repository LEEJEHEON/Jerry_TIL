# 조건에 맞는 개발자 찾기

SELECT DISTINCT D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
FROM DEVELOPERS D 
INNER JOIN SKILLCODES S 
ON D.SKILL_CODE & S.CODE
WHERE S.NAME IN ('Python','C#')
ORDER BY D.ID ASC


/* 
조건1 : DEVELOPERS 테이블에서 Python이나 C# 스킬을 가진 개발자의 정보를 조회하려 합니다. 조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문

핵심 스킬1 : & 비트 AND 연산자를 이용하여 Python이나 C# 스킬을 가진 개발자를 찾음

*/
