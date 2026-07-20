/*
==================================================
Konu: Subquery (Alt Sorgu)
Dosya: 06_subquery.sql

Amaç:
Subquery, bir SQL sorgusunun içinde başka bir
SQL sorgusu çalıştırmaktır.
==================================================
*/

-- Ortalama fiyatın üzerinde olan ürünleri listele
SELECT
    product_name,
    price
FROM Products
WHERE price >
(
    SELECT AVG(price)
    FROM Products
);

-- En son verilen siparişi listele
SELECT
    order_id,
    order_date
FROM Orders
WHERE order_date =
(
    SELECT MAX(order_date)
    FROM Orders
);
