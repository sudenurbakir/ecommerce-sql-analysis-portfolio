/*
==================================================
Konu: SELECT
Dosya: 01_select.sql

Amaç:
SELECT ifadesi, bir tablodaki verileri görüntülemek için kullanılır.
Bu dosyada SELECT komutunun temel kullanım örnekleri yer almaktadır.
==================================================
*/

-- Customers tablosundaki tüm kayıtları listele
SELECT *
FROM Customers;

-- Customers tablosunda sadece ad ve soyad bilgilerini listele
SELECT first_name, last_name
FROM Customers;

-- Products tablosunda ürün adı ve fiyat bilgilerini listele
SELECT product_name, unit_price
FROM Products;

-- Orders tablosundaki sipariş tarihlerini listele
SELECT order_date
FROM Orders;

-- Order_Items tablosundaki ürün ve adet bilgilerini listele
SELECT product_id, quantity
FROM Order_Items;
