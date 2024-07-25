-- 코드를 입력하세요
SELECT A.TITLE AS TITLE, A.BOARD_ID AS BOARD_ID, B.REPLY_ID AS REPLY_ID,
B.WRITER_ID AS WIRTER_ID, B.CONTENTS AS CONTENTS, 
DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS A
JOIN USED_GOODS_REPLY AS B
ON A.BOARD_ID=B.BOARD_ID
WHERE YEAR(A.CREATED_DATE)=2022 AND MONTH(A.CREATED_DATE)=10
ORDER BY B.CREATED_DATE, A.TITLE