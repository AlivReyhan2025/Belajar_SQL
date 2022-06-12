SELECT *, concat(code,' ',variant_barang)
FROM
(SELECT DISTINCT
c.default_code as code, 
count(b.product_attribute_value_id) as variant_barang
from product_attribute_line a
join product_attribute_line_product_attribute_value_rel b on b.product_attribute_line_id = a.id
join product_template c on c.id = a.product_tmpl_id
where a.attribute_id = 2
GROUP BY c.default_code, c.color_names) 
memek