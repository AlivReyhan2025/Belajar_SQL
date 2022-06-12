select * from 
(select 
a.date,
c.default_code as Default_Code,
e.name  as Warna,
a.hfg1 as hfg
from lhp_line a
left join product_product b on b.id = a.product_id
left join product_template c on c.id = a.product_tmpl_id
left join plant_master d on d.id = a.plant_id
left join product_attribute_value e on e.id = a.variant1_id
WHERE a."date"::date > '2022-02-28'
and a."date"::date <= CURRENT_DATE
and a.state = '3_done'
UNION
select s
f.date,
h.default_code as Default_Code,
j.name as Warna,
f.hfg2 as hfg 
from lhp_line f
left join product_product g on g.id = f.product_id
left join product_template h on h.id = f.product_tmpl_id
left join plant_master i on i.id = f.plant_id
left join product_attribute_value j on j.id = f.variant2_id
WHERE f."date"::date > '2022-02-28'
and f."date"::date <= CURRENT_DATE
and f.state = '3_done'
UNION
select 
k.date,
m.default_code as Default_Code,
o.name as warna,
k.hfg3 as hfg 
from lhp_line k
left join product_product l on l.id = k.product_id
left join product_template m on m.id = k.product_tmpl_id
left join plant_master n on n.id = k.plant_id
left join product_attribute_value o on o.id = k.variant3_id
WHERE k."date"::date > '2022-02-28'
and k."date"::date <= CURRENT_DATE
and k.state = '3_done'
UNION
select 
k2.date,
m2.default_code as Default_Code,
o2.name as warna,
k2.hfg4 as hfg 
from lhp_line k2
left join product_product l2 on l2.id = k2.product_id
left join product_template m2 on m2.id = k2.product_tmpl_id
left join plant_master n2 on n2.id = k2.plant_id
left join product_attribute_value o2 on o2.id = k2.variant4_id
WHERE k2."date"::date > '2022-02-28'
and k2."date"::date <= CURRENT_DATE
and k2.state = '3_done'
UNION
select 
k3.date,
m3.default_code as Default_Code,
o3.name as warna,
k3.hfg5 as hfg 
from lhp_line k3
left join product_product l3 on l3.id = k3.product_id
left join product_template m3 on m3.id = k3.product_tmpl_id
left join plant_master n3 on n3.id = k3.plant_id
left join product_attribute_value o3 on o3.id = k3.variant5_id
WHERE k3."date"::date > '2022-02-28'
and k3."date"::date <= CURRENT_DATE
and k3.state = '3_done'
UNION
select 
k4.date,
m4.default_code as Default_Code,
o4.name as warna,
k4.hfg6 as hfg 
from lhp_line k4
left join product_product l4 on l4.id = k4.product_id
left join product_template m4 on m4.id = k4.product_tmpl_id
left join plant_master n4 on n4.id = k4.plant_id
left join product_attribute_value o4 on o4.id = k4.variant6_id
WHERE k4."date"::date > '2022-02-28'
and k4."date"::date <= CURRENT_DATE
and k4.state = '3_done') tb
where warna is not null
ORDER BY date, default_code, warna asc

-- Sisanya digabung dengan UNION untuk variant lain, jadi 1 variant / query
-- a.variant2_id,
-- a.variant3_id,
-- a.variant4_id,
-- a.variant5_id,
-- a.variant6_id,
-- a.hfg2, 
-- a.hfg3, 
-- a.hfg4, 
-- a.hfg5, 
-- a.hfg6, 
-- ambil kode, warna, hfg nanti bisa lakukan sumif di python atau langsung di spreadsheet