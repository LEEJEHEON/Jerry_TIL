# 3월에 태어난 여성회원 목록 출력하기.sql

SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH,'%Y-%m-%d') as DATE_OF_BIRTH
FROM MEMBER_PROFILE 
WHERE MONTH(DATE_OF_BIRTH) = 3
and GENDER = 'W'
AND TLNO IS NOT NULL 
ORDER BY MEMBER_ID 

/* 
조건1 : MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문

핵심 스킬1 : month 로 월 데이터만 추출 

