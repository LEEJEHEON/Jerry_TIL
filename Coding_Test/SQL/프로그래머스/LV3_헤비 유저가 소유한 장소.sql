# 헤비 유저가 소유한 장소

SELECT ID, NAME, HOST_ID
FROM PLACES
WHERE HOST_ID IN (
SELECT HOST_ID
FROM PLACES  
GROUP BY HOST_ID
HAVING COUNT(HOST_ID)>1
    )
ORDER BY ID ASC

/* 
조건1 : 이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문

핵심 스킬1 : having으로 2개 이상의 값을 가진 id 값을 찾음

*/

