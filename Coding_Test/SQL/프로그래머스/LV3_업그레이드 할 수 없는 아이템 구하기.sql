# 업그레이드 할 수 없는 아이템 구하기

SELECT DISTINCT II.ITEM_ID, II.ITEM_NAME, II.RARITY
FROM ITEM_INFO II
LEFT JOIN ITEM_TREE IT
ON II.ITEM_ID = IT.PARENT_ITEM_ID
WHERE IT.PARENT_ITEM_ID IS NULL
ORDER BY II.ITEM_ID DESC
 


/* 
조건1 : 더 이상 업그레이드할 수 없는 아이템의 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 출력하는 SQL 문

핵심 스킬1 : LEFT JOIN을 한 다음에 NULL값이 있는 것만 추출하여 PARENT_ITEM_ID에 값이 없는 ID 값만 추출함 
*/
