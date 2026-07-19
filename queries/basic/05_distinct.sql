/*
==================================================
Konu: DISTINCT
Dosya: 05_distinct.sql

Amaç:
DISTINCT ifadesi, tekrar eden kayıtları kaldırarak
benzersiz (unique) değerleri listelemek için kullanılır.
==================================================
*/

-- Ürün kategorilerini tekrar etmeden listele
SELECT DISTINCT category
FROM Products;

-- Sipariş durumlarını tekrar etmeden listele
SELECT DISTINCT order_status
FROM Orders;

-- Müşterilerin kayıt olduğu farklı tarihleri listele
SELECT DISTINCT created_at
FROM Customers;
