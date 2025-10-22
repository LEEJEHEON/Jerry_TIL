# 카테고리 별 도서 판매량 집계하기

SELECT B.CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK B
INNER JOIN BOOK_SALES BS
ON B.BOOK_ID= BS.BOOK_ID
AND DATE_FORMAT(BS.SALES_DATE,'%Y-%m')='2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY

/* 
조건1 : 2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문

핵심 스킬1 : DATE_FORMAT 함수를 이용해서 2022년 1월 데이터만 필터링  
핵심 스킬2 : GROUP BY 를 이용해서 카테고리별 판매량을 집계

*/
