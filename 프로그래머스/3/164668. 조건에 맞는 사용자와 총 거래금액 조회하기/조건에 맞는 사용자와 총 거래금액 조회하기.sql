-- 코드를 입력하세요
SELECT a.user_id, a.nickname, sum(b.price) as total_sales
from used_goods_user a, used_goods_board b
where a.user_id=b.writer_id and status='DONE'
group by b.writer_id
having sum(b.price)>=700000
order by total_sales