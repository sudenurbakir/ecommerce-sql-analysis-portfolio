/*
==================================================
Konu: ALIAS (AS)
Dosya: 06_alias.sql

Amaç:
ALIAS (AS) ifadesi, sütunlara veya tablolara
geçici ve daha anlaşılır isimler vermek için kullanılır.
==================================================
*/

-- Ürün adını ve fiyatını daha anlaşılır başlıklarla listele
SELECT
    product_name AS Ürün_Adı,
    unit_price AS Fiyat
FROM Products;

-- Sipariş tarihini farklı bir başlık ile göster
SELECT
    order_date AS Sipariş_Tarihi
FROM Orders;

-- Müşteri adını ve soyadını farklı başlıklarla göster
SELECT
    first_name AS Ad,
    last_name AS Soyad
FROM Customers;
