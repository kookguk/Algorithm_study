-- 코드를 입력하세요
SELECT a.rest_id, rest_name, food_type, favorites, address, ROUND(AVG(review_score), 2) AS score
FROM rest_info a
JOIN rest_review b ON a.rest_id = b.rest_id
WHERE address LIKE '서울%'
GROUP BY a.rest_id
ORDER BY score DESC, favorites DESC;