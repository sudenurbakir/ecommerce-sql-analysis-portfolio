/*
==================================================
Konu: En Çok Satan Ürünler
Dosya: 01_top_selling_products.sql

Amaç:
Satılan ürünlerin toplam satış miktarını
hesaplayarak en çok satılan ürünleri listelemek.
==================================================
*/

SELECT
    Products.product_name,
    SUM(Order_Items.quantity) AS Total_Sales
FROM Order_Items
INNER JOIN Products
ON Order_Items.product_id = Products.product_id
GROUP BY Products.product_name
ORDER BY Total_Sales DESC;
