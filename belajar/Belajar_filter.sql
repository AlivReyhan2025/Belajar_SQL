-- SELECT
-- * FROM product_category
-- WHERE id IN (11,12,15,17,19,20)

-- SELECT 
-- * FROM product_category 
-- where "name" = 'Cable' 
-- OR name = 'V-Belt'
-- or name = 'Sensor'

SELECT id, name
FROM product_category 
 where "name" = 'Cable' 
 OR name = 'V-Belt'
 or name = 'Sensor'