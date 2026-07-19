/*
==================================================
Konu: ORDER BY
Dosya: 03_order_by.sql

Amaç:
ORDER BY ifadesi, sorgu sonuçlarını belirli bir sütuna göre
artan (ASC) veya azalan (DESC) şekilde sıralamak için kullanılır.
==================================================
*/

-- Ürünleri fiyatına göre artan sırada listele
SELECT product_name, unit_price
FROM Products
ORDER BY unit_price ASC;

-- Ürünleri fiyatına göre azalan sırada listele
SELECT product_name, unit_price
FROM Products
ORDER BY unit_price DESC;

-- Müşterileri adına göre alfabetik sırada listele
SELECT first_name, last_name
FROM Customers
ORDER BY first_name ASC;

-- Siparişleri en yeni tarihten en eski tarihe doğru listele
SELECT order_id, order_date
FROM Orders
ORDER BY order_date DESC;
