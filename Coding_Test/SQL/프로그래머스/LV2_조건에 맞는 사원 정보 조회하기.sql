# 조건에 맞는 사원 정보 조회하기
SELECT SUM(HG.SCORE) AS SCORE, HE.EMP_NO, HE.EMP_NAME, HE.POSITION, HE.EMAIL
FROM HR_EMPLOYEES HE
LEFT JOIN HR_GRADE HG
ON HE.EMP_NO = HG.EMP_NO
GROUP BY HE.EMP_NO
ORDER BY SUM(HG.SCORE) DESC 
LIMIT 1 

/* 
조건1 : HR_DEPARTMENT, HR_EMPLOYEES, HR_GRADE 테이블에서 2022년도 한해 평가 점수가 가장 높은 사원 정보를 조회하려 합니다. 
2022년도 평가 점수가 가장 높은 사원들의 점수, 사번, 성명, 직책, 이메일을 조회하는 SQL문


핵심 스킬1 : LEFT JOIN을 사용하여 모든 사원 정보를 조회
핵심 스킬2 : GROUP BY를 사용하여 사원별 평가 점수를 집계
핵심 스킬3 : ORDER BY를 사용하여 평가 점수가 가장 높은 사원을 조회
핵심 스킬4 : LIMIT를 사용하여 가장 높은 평가 점수를 가진 사원 1명만 조회
*/