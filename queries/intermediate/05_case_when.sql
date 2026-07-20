/*
==================================================
Konu: CASE WHEN
Dosya: 05_case_when.sql

Amaç:
CASE WHEN ifadesi, belirli koşullara göre
farklı sonuçlar döndürmek için kullanılır.
==================================================
*/

-- Sipariş durumlarını Türkçe olarak göster
SELECT
    order_id,
    CASE
        WHEN order_status = 'Delivered' THEN 'Teslim Edildi'
        WHEN order_status = 'Preparing' THEN 'Hazırlanıyor'
        WHEN order_status = 'Cancelled' THEN 'İptal Edildi'
        ELSE 'Bilinmeyen Durum'
    END AS Sipariş_Durumu
FROM Orders;

-- Ürün fiyatlarını kategorilere ayır
SELECT
    product_name,
    price,
    CASE
        WHEN price >= 5000 THEN 'Yüksek Fiyat'
        WHEN price >= 1000 THEN 'Orta Fiyat'
        ELSE 'Düşük Fiyat'
    END AS Fiyat_Kategorisi
FROM Products;
