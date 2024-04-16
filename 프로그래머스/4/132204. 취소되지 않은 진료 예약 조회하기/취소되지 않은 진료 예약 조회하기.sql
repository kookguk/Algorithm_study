-- 코드를 입력하세요
SELECT apnt_no, pt_name, a.pt_no, b.mcdp_cd, dr_name, apnt_ymd
from patient a
join appointment b
on a.pt_no = b.pt_no
join doctor
on dr_id = mddr_id
where apnt_ymd like '2022-04-13%' and b.mcdp_cd='CS' and APNT_CNCL_YN='N'
order by apnt_ymd