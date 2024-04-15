-- 코드를 입력하세요
SELECT b.author_id,b.author_name, a.category, (sum(c.sales*a.price)) as total_sales
from book a, author b, book_sales c
where a.book_id=c.book_id and a.author_id=b.author_id and date_format(sales_date,'%Y-%m-%d') like '2022-01%'
group by a.category, b.author_name
order by b.author_id, a.category desc