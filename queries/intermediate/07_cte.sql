/*
==================================================
Konu: Common Table Expression (CTE)
Dosya: 07_cte.sql

Amaç:
CTE, geçici bir sonuç kümesi oluşturmak için kullanılır.
Özellikle uzun ve karmaşık sorguları daha okunabilir
hale getirmek amacıyla tercih edilir.
==================================================
*/

-- Ortalama fiyatın üzerindeki ürünleri CTE kullanarak listele
WITH ProductPrices AS
(
    SELECT
        product_name,
        price
    FROM Products
)

SELECT
    product_name,
    price
FROM ProductPrices
WHERE price >
(
    SELECT AVG(price)
    FROM ProductPrices
);
