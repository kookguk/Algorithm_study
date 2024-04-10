-- 코드를 입력하세요
SELECT user_id, nickname, concat(city, ' ', STREET_ADDRESS1, ' ',STREET_ADDRESS2) as 전체주소, CONCAT(SUBSTRING(tlno, 1, 3), '-', SUBSTRING(tlno, 4, 4), '-', SUBSTRING(tlno, 8, 4)) as 전화번호
from USED_GOODS_USER b
join USED_GOODS_BOARD a
on b.user_id = a.writer_id
group by writer_id
having count(board_id) >= 3
order by user_id desc