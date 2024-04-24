-- 코드를 입력하세요
SELECT category, max(price) as price, product_name
from food_product
WHERE (category , price ) IN
   (SELECT CATEGORY , max(PRICE) AS PRICE
    FROM FOOD_PRODUCT
    WHERE CATEGORY in ('과자','국','김치','식용유')
    GROUP BY CATEGORY)
group by category
order by price desc