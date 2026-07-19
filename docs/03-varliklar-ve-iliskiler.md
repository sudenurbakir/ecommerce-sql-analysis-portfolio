# Varlıklar ve İlişkiler

## Amaç

Bu dokümanın amacı, e-ticaret sisteminde yer alan temel varlıkları belirlemek ve bu varlıklar arasındaki ilişkileri açıklamaktır.

---

## Varlık (Entity) Nedir?

Varlık, sistem içerisinde hakkında bilgi tutulan her nesneyi ifade eder.

Bu proje kapsamında müşteriler, ürünler ve siparişler birer varlık olarak ele alınmaktadır.

---

## Projede Kullanılacak Varlıklar

| Varlık | Açıklama |
|--------|----------|
| Customers | Sisteme kayıtlı müşterileri temsil eder. |
| Products | Satışa sunulan ürünleri temsil eder. |
| Orders | Müşteriler tarafından oluşturulan siparişleri temsil eder. |
| Order_Items | Sipariş içerisinde bulunan ürünleri temsil eder. |

---

## Varlıklar Arasındaki İlişkiler

Veritabanında yer alan varlıklar birbirleriyle ilişkilidir.

- Bir müşteri birden fazla sipariş oluşturabilir.
- Her sipariş yalnızca bir müşteriye aittir.
- Bir sipariş bir veya birden fazla ürün içerebilir.
- Aynı ürün farklı siparişlerde yer alabilir.

Bu nedenle sipariş bilgileri ile sipariş detayları ayrı tablolarda tutulmaktadır.

---

## İlişki Şeması

Customers
    │
    └──── Orders
               │
               └──── Order_Items
                          │
                          └──── Products
