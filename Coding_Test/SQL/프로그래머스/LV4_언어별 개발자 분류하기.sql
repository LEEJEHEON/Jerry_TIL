# 프로그래머스 Level 4 언어별 개발자 분류하기

SELECT 
CASE WHEN SUM(CASE WHEN S.CATEGORY='Front End' THEN 1 ELSE 0 END) > 0
    AND SUM(CASE WHEN S.NAME='Python' THEN 1 ELSE 0 END) > 0
    THEN 'A'
    WHEN SUM(CASE WHEN S.NAME ='C#' THEN 1 ELSE 0 END) > 0  THEN 'B'
    WHEN SUM(CASE WHEN S.CATEGORY='Front End' THEN 1 ELSE 0 END) > 0 THEN 'C'
    ELSE 'OUT'
END AS 'GRADE' ,D.ID, D.EMAIL
FROM DEVELOPERS D
INNER JOIN SKILLCODES S 
ON (D.SKILL_CODE & S.CODE) = S.CODE # 비트 AND 연산(&)을 통해 s.CODE의 모든 비트가 d.SKILL_CODE 안에도 켜져 있는지 확인
GROUP BY D.ID, D.EMAIL
HAVING GRADE != 'OUT' # 그 외는 OUT 등급이므로 제외
ORDER BY GRADE, ID

/* 
조건1 : Front End 와 Python 을 모두 사용하는 개발자는 A 등급
조건2 : C# 을 사용하는 개발자는 B 등급
조건3 : Front End 를 사용하는 개발자는 C 등급
조건4 : 그 외는 OUT 등급

핵심 스킬1 : 비트 AND 연산(&)을 통해 s.CODE의 모든 비트가 d.SKILL_CODE 안에도 켜져 있는지 확인
핵심 스킬2 : CASE WHEN 사용하였고, group by 때문에 sum을 통해 조건에 맞는 개발자를 분류

*/
