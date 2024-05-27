-- download and install sqlite extension

SELECT * 
FROM tb_orders
LIMIT 10;
/* 
ctrl + shift + q to run query 
or select code, right click, run query
*/

SELECT  seller_id,
        seller_state
FROM tb_sellers;

SELECT * 
FROM tb_products
LIMIT 5;

-- bebes or perfumaria 
-- with more than 1 photo
SELECT  product_id,
        product_category_name,
        product_photos_qty
FROM tb_products
WHERE (product_category_name='bebes' 
    OR product_category_name='perfumaria')
AND product_photos_qty>1
LIMIT 5;

-- bebes with more than 1 photo
-- or perfumaria with more than 5 photos
SELECT  t1.product_id,
        t1.product_category_name,
        t1.product_photos_qty
FROM tb_products as t1
WHERE (t1.product_category_name='bebes' 
    AND t1.product_photos_qty>1)
OR (t1.product_category_name='perfumaria' 
    AND t1.product_photos_qty>5)
LIMIT 15;
