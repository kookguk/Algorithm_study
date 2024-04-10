-- 코드를 입력하세요
SELECT a.car_id
from CAR_RENTAL_COMPANY_CAR a
join CAR_RENTAL_COMPANY_RENTAL_HISTORY b
on a.car_id = b.car_id
where a.car_type = '세단' and b.start_date like '2022-10%'
group by car_id
order by car_id desc