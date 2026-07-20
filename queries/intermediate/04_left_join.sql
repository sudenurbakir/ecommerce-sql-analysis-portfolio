/*
==================================================
Konu: LEFT JOIN
Dosya: 04_left_join.sql

Amaç:
LEFT JOIN, sol taraftaki tablodaki tüm kayıtları
getirir. Sağ taraftaki tabloda eşleşme varsa
ilgili bilgiler eklenir, eşleşme yoksa NULL değeri döner.
==================================================
*/

-- Tüm müşterileri ve varsa sipariş bilgilerini listele
SELECT
    Customers.customer_id,
    Customers.first_name,
    Customers.last_name,
    Orders.order_id
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Tüm ürünleri ve varsa sipariş bilgilerini listele
SELECT
    Products.product_name,
    Order_Items.order_id
FROM Products
LEFT JOIN Order_Items
ON Products.product_id = Order_Items.product_id;
