# 그룹별 조건에 맞는 식당 목록 출력하기

SELECT MP.MEMBER_NAME , RP.REVIEW_TEXT, DATE_FORMAT(RP.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM MEMBER_PROFILE MP
INNER JOIN REST_REVIEW RP
ON MP.MEMBER_ID = RP.MEMBER_ID
WHERE MP.MEMBER_ID IN (
    SELECT MEMBER_ID
    FROM REST_REVIEW 
    GROUP BY MEMBER_ID
    HAVING COUNT(*) = (
        SELECT MAX(M_COUNT)
        FROM (
            select count(*) AS M_COUNT 
            from REST_REVIEW 
            group by MEMBER_ID
            ) AS SUB
    )
)
ORDER BY REVIEW_DATE, REVIEW_TEXT;

/* 
조건1 : 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문

핵심 스킬1 : 오라클과 달리 max , count를 한번에 하는 함수가 없어서 서브 쿼리를 통해서 max 값을 구함 

회고 : 다른 답변을 본 결가 COUNT를 기준으로 내림차순 정렬을 하여 LIMIT 1 을 하여 MAX 값을 뽑는 방법도 있음 
*/