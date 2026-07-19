/*
==================================================
Konu: WHERE
Dosya: 02_where.sql

Amaç:
WHERE ifadesi, belirli bir koşulu sağlayan kayıtları filtrelemek için kullanılır.
Bu dosyada WHERE komutunun temel kullanım örnekleri yer almaktadır.
==================================================
*/

-- Elektronik kategorisindeki ürünleri listele
SELECT *
FROM Products
WHERE category = 'Elektronik';

-- Stok miktarı 50'den fazla olan ürünleri listele
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity > 50;

-- Teslim edilen siparişleri listele
SELECT order_id, order_status
FROM Orders
WHERE order_status = 'Teslim Edildi';

-- 1000 TL'den pahalı ürünleri listele
SELECT product_name, unit_price
FROM Products
WHERE unit_price > 1000;
