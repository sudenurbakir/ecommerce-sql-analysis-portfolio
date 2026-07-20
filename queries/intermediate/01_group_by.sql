/*
==================================================
Konu: GROUP BY
Dosya: 01_group_by.sql

Amaç:
GROUP BY ifadesi, aynı değere sahip kayıtları
gruplandırmak ve bu gruplar üzerinde analiz yapmak
için kullanılır.
==================================================
*/

-- Her kategoride bulunan ürün sayısını listele
SELECT
    category,
    COUNT(*) AS Ürün_Sayısı
FROM Products
GROUP BY category;

-- Her sipariş durumuna göre sipariş sayısını listele
SELECT
    order_status,
    COUNT(*) AS Sipariş_Sayısı
FROM Orders
GROUP BY order_status;

-- Her müşterinin verdiği sipariş sayısını listele
SELECT
    customer_id,
    COUNT(*) AS Sipariş_Sayısı
FROM Orders
GROUP BY customer_id;
