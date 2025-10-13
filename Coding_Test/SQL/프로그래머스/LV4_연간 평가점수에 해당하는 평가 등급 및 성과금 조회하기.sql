# 연간 평가점수에 해당하는 평가 등급 및 성과금 조회하기

WITH AVG_GRADE AS (
	SELECT  HG.EMP_NO, AVG(HG.SCORE), 
	CASE 
	WHEN AVG(HG.SCORE) >= 96 THEN 'S'  
	WHEN AVG(HG.SCORE) >= 90 THEN 'A'  
	WHEN AVG(HG.SCORE) >= 80 THEN 'B'  
	ELSE 'C'
	END AS GRADE
	FROM HR_GRADE HG
	GROUP BY HG.EMP_NO
)
SELECT HE.EMP_NO, HE.EMP_NAME , HG.GRADE, 
CASE 
WHEN HG.GRADE = 'S' THEN HE.SAL*0.2
WHEN HG.GRADE = 'A' THEN HE.SAL*0.15
WHEN HG.GRADE = 'B' THEN HE.SAL*0.1
ELSE 0
END AS BONUS
FROM HR_EMPLOYEES HE
INNER JOIN AVG_GRADE HG
ON HE.EMP_NO = HG.EMP_NO
ORDER BY HE.EMP_NO

/* 
조건1 : 평가 점수별 등급과 등급에 따른 성과금 정보가 아래와 같을 때, 사번, 성명, 평가 등급, 성과금을 조회하는 SQL문을 작성

기준 점수	평가 등급	성과금(연봉 기준)
96 이상	S	20%
90 이상	A	15%
80 이상	B	10%
이외	C	0%

핵심 스킬1 : WITH로 등급을 먼저 선별  
핵심 스킬2 : CASE를 사용하여 등급, 보너스 별도 계산 

*/
