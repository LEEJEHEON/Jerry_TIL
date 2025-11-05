# 특정 형질을 가지는 대장균 찾기

SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & b'10') !=2 and (GENOTYPE & b'0101') IN (1,4,5)

/* 
조건1 : 대장균의 형질을 나타내는 비트 표현을 확인하려 합니다. 특정 형질을 가지는 대장균의 수를 조회하는 SQL문

핵심 스킬1 : 비트 AND 연산(&)을 통해 특정 형질을 가지는 대장균의 수를 조회

