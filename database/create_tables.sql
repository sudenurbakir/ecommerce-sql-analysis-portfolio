/*
==================================================
Proje: E-Ticaret SQL Analiz Portfolyosu
Dosya: create_tables.sql
Açıklama: E-ticaret veritabanına ait temel tabloların oluşturulması.
==================================================
*/

-- Customers Tablosu

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    created_at DATE
);
