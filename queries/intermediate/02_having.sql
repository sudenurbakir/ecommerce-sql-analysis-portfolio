/*
==================================================
Konu: HAVING
Dosya: 02_having.sql

Amaç:
HAVING ifadesi, GROUP BY ile oluşturulan grupları
belirli koşullara göre filtrelemek için kullanılır.
==================================================
*/

-- İkiden fazla ürüne sahip kategorileri listele
SELECT
    category,
    COUNT(*) AS Ürün_Sayısı
FROM Products
GROUP BY category
HAVING COUNT(*) > 2;

-- Birden fazla siparişi bulunan müşterileri listele
SELECT
    customer_id,
    COUNT(*) AS Sipariş_Sayısı
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Birden fazla siparişe sahip sipariş durumlarını listele
SELECT
    order_status,
    COUNT(*) AS Sipariş_Sayısı
FROM Orders
GROUP BY order_status
HAVING COUNT(*) > 1;
