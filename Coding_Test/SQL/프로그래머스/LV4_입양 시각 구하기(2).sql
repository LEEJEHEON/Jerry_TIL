# 프로그래머스 Level 4 LV4_입양 시각 구하기(2)

WITH RECURSIVE hours AS (
  SELECT 0 AS h # 시작값
  UNION ALL
  SELECT h + 1 FROM hours WHERE h + 1 < 24 #이전 값에 1씩 더해서 23까지 반복적으로 생성
)
SELECT
  hours.h AS hour,
  COALESCE(COUNT(t.ANIMAL_ID), 0) AS cnt
FROM hours
LEFT JOIN ANIMAL_OUTS t
  ON HOUR(t.DATETIME) = hours.h
GROUP BY hours.h
ORDER BY hours.h;

/* 
조건1 : 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회

핵심 스킬1 : RECURSIVE 를 통해 0시부터 23시까지 반복적으로 생성
*RECURSIVE 는 재귀적으로 반복적으로 생성하는 테이블 / WHERE로 종료조건이 필요함 

*/
