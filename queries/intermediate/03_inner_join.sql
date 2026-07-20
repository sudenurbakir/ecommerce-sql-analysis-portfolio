/*
==================================================
Konu: INNER JOIN
Dosya: 03_inner_join.sql

Amaç:
INNER JOIN, iki veya daha fazla tablo arasındaki
ilişkili verileri birleştirmek için kullanılır.
Yalnızca her iki tabloda da eşleşen kayıtlar getirilir.
==================================================
*/

-- Siparişleri müşteri bilgileri ile birlikte listele
SELECT
    Orders.order_id,
    Customers.first_name,
    Customers.last_name,
    Orders.order_date
FROM Orders
INNER JOIN Customers
ON Orders.customer_id = Customers.customer_id;

-- Sipariş edilen ürünleri ürün isimleri ile birlikte listele
SELECT
    Order_Items.order_id,
    Products.product_name,
    Order_Items.quantity
FROM Order_Items
INNER JOIN Products
ON Order_Items.product_id = Products.product_id;
