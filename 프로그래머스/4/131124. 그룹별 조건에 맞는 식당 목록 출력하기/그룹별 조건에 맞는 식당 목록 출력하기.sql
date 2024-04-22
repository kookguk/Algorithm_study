-- 코드를 입력하세요
SELECT a.member_name, b.review_text, DATE_FORMAT(b.review_date, '%Y-%m-%d') as review_date
from member_profile a
join rest_review b
on a.member_id = b.member_id
WHERE a.member_id in (select member_id
                    FROM (select *, DENSE_RANK() OVER (ORDER BY COUNT(*) DESC)                           AS review_rank
                          FROM rest_review
                          GROUP BY member_id) INLINEVIEW
                    WHERE review_rank = 1
                   )
order by b.review_date, b.review_text