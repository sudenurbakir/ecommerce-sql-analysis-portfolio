# Veri Modeli

## Amaç

Bu dokümanın amacı, proje kapsamında oluşturulacak e-ticaret veritabanının veri modelini tanımlamaktır.

---

## Veri Modeli

Veri modeli, sistem içerisinde tutulacak verilerin nasıl organize edileceğini ve tablolar arasındaki ilişkilerin nasıl kurulacağını gösteren yapıdır.

Bu proje kapsamında aşağıdaki tablolar kullanılacaktır.

| Tablo | Açıklama |
|--------|----------|
| Customers | Müşteri bilgilerini içerir. |
| Products | Ürün bilgilerini içerir. |
| Orders | Sipariş bilgilerini içerir. |
| Order_Items | Siparişe ait ürünleri içerir. |

---

## Veri Akışı

E-ticaret sistemindeki temel veri akışı aşağıdaki gibidir.

1. Müşteri sisteme kayıt olur.
2. Müşteri ürünleri görüntüler.
3. Müşteri sipariş oluşturur.
4. Sipariş içerisinde bir veya daha fazla ürün bulunur.

Bu süreç sonucunda oluşan veriler ilgili tablolarda saklanır.

---

## Veri Modeli Şeması

Customers
    │
    │
    ▼
Orders
    │
    │
    ▼
Order_Items
    ▲
    │
Products
