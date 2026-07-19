/*
==================================================
Konu: LIMIT
Dosya: 04_limit.sql

Amaç:
LIMIT ifadesi, sorgu sonucunda döndürülecek kayıt
sayısını sınırlandırmak için kullanılır.
==================================================
*/

-- İlk 5 müşteriyi listele
SELECT *
FROM Customers
LIMIT 5;

-- İlk 3 ürünü listele
SELECT product_name
FROM Products
LIMIT 3;

-- En pahalı 5 ürünü listele
SELECT product_name, unit_price
FROM Products
ORDER BY unit_price DESC
LIMIT 5;

-- En yeni 3 siparişi listele
SELECT order_id, order_date
FROM Orders
ORDER BY order_date DESC
LIMIT 3;
