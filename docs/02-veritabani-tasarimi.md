# Veritabanı Tasarımı

## Amaç

Bu dokümanın amacı, proje kapsamında kullanılacak e-ticaret veritabanının temel yapısını açıklamaktır. Veritabanı tasarımı, sistemde gerçekleşen iş süreçleri dikkate alınarak oluşturulmuş ve ilerleyen bölümlerde geliştirilecek SQL sorgularına temel oluşturacak şekilde planlanmıştır.

---

## Genel Bakış

Bir e-ticaret platformunda müşteriler, ürünler ve siparişler gibi farklı veri grupları bulunmaktadır. Bu verilerin tek bir tabloda tutulması yerine, her veri grubu kendi amacına uygun ayrı tablolar içerisinde saklanmaktadır.

Bu yaklaşım sayesinde;

- Veri tekrarının önüne geçilir.
- Veri bütünlüğü korunur.
- Veri yönetimi kolaylaşır.
- Analiz ve raporlama süreçleri daha verimli hale gelir.

---

## Veritabanı Yapısı

Bu proje kapsamında aşağıdaki temel tablolar oluşturulacaktır.

| Tablo | Açıklama |
|--------|----------|
| **Customers** | Müşterilere ait temel bilgileri içerir. |
| **Products** | Satışa sunulan ürünlerin bilgilerini içerir. |
| **Orders** | Oluşturulan siparişlerin genel bilgilerini içerir. |
| **Order_Items** | Sipariş içerisinde yer alan ürünleri ve miktarlarını içerir. |

Customers
│
└──── Orders
         │
         │
         └──── Order_Items
                    │
                    │
                    └──── Products

---

## Tabloların Birbirleriyle İlişkisi

Veritabanındaki tablolar birbirleriyle ilişkili olarak çalışmaktadır.

- Bir müşteri birden fazla sipariş oluşturabilir.
- Bir sipariş birden fazla ürün içerebilir.
- Aynı ürün farklı siparişlerde yer alabilir.

Bu nedenle sipariş bilgileri ile sipariş içerisindeki ürünler ayrı tablolarda tutulmaktadır.

---

## Tasarım Yaklaşımı

Veritabanı tasarlanırken aşağıdaki temel prensipler dikkate alınmıştır.

- Veri tekrarını en aza indirmek
- Veri bütünlüğünü korumak
- Ölçeklenebilir bir yapı oluşturmak
- SQL sorgularını kolaylaştırmak
- İş analizi süreçlerini desteklemek

---


