SELECT a.default_code,
a.name as name_item,
a.current_price as harga,
b.name as name_category
FROM product_template a
LEFT JOIN product_category b on b.id = a.categ_id
where a.current_price > 0
and (b.name = 'Sandal EVA' or b.name = 'Sandal PVC')