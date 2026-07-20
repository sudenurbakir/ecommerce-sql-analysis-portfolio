/*
==================================================
Konu: Window Functions
Dosya: 08_window_functions.sql

Amaç:
Window Functions, satırları gruplandırmadan
analiz yapmayı sağlar. Özellikle sıralama,
numaralandırma ve karşılaştırma işlemlerinde
yaygın olarak kullanılır.
==================================================
*/

-- Ürünleri fiyata göre sıralayarak numaralandır
SELECT
    product_name,
    price,
    ROW_NUMBER() OVER (ORDER BY price DESC) AS Sıra_No
FROM Products;

-- Ürünleri fiyata göre sıralayarak derece ver
SELECT
    product_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS Fiyat_Sırası
FROM Products;
