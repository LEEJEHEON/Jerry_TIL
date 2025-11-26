# 조건에 맞는 도서와 저자 리스트 출력하기

SELECT  B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE,"%Y-%m-%d") as PUBLISHED_DATE
FROM BOOK B
INNER JOIN AUTHOR A
ON B.AUTHOR_ID = A.AUTHOR_ID 
WHERE B.CATEGORY = '경제'
ORDER BY PUBLISHED_DATE

/* 
조건1 : '경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문

핵심 스킬1 : DATE_FORMAT 정답에 맞는 date 형태 출력 

*/
