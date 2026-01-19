# osop-linux-cronjob-backup
Cronjobs &amp; Backup Scripts on Linux (Ubuntu)


## Proje Tanımı
Bu proje, Linux (Ubuntu) işletim sisteminde cronjobs kavramını
öğrenmek amacıyla hazırlanmıştır.
Cronjobs yapısının temel çalışma mantığı açıklanmış ve
Python kullanılarak basit bir otomatik yedekleme örneği yapılmıştır.
-------------------------------------

## 1. Cronjob nedir?
Cronjob, Linux işletim sistemlerinde belirli bir zaman aralığında veya belirli bir zamanda
otomatik olarak çalıştırılması istenen görevler için kullanılan bir zamanlama mekanizmasıdır.
Bu görevler arka planda çalışır ve kullanıcı müdahalesi olmadan otomatik şekilde gerçekleştirilir.

Cronjob’lar genellikle;
- Yedekleme işlemleri
- Sistem bakımı
- Log temizleme
- Otomatik script çalıştırma

gibi işlemler için kullanılır

-------------------------------------

## 2. Cron ve Crontab Nedir?
Cron, Linux sistemlerde arka planda çalışan ve zamanlanmış görevlerin
belirlenen zamanlarda çalışmasını sağlayan bir servistir.

Crontab ise cron servisinin çalıştıracağı görevlerin tanımlandığı tablodur.
Kullanıcılar bu tabloya görev ekleyerek otomatik olarak çalıştırılacak
komutları veya scriptleri belirleyebilir.

Cron ve crontab arasındaki fark kısaca şu şekildedir:
- Cron, zamanlanmış görevleri çalıştıran servistir.
- Crontab ise bu görevlerin tanımlandığı yapı (tablo/dosya)dır

-------------------------------------

## 3. Cron Zamanlama Formatı
Cronjob’larda görevlerin ne zaman çalışacağını belirtmek için
aşağıdaki zamanlama formatı kullanılır:

# * * * * * çalıştırılacak_komut_veya_dosya_yolu
# │ │ │ │ │
# │ │ │ │ └───── Haftanın günü (0 - 6) (Pazar = 0 veya 7)
# │ │ │ │ ┌───── Ay (1 - 12)
# │ │ │ ┌─────── Gün (1 - 31)
# │ │ ┌───────── Saat (0 - 23) 
# │ ┌─────────── Dakika (0 - 59)

-------------------------------------

### 4. Basit Cronjob Örnekleri
Her gün saat 03:00’te çalışan bir görev:
0 3 * * * /home/user/script.sh

Her 5 dakikada bir çalışan bir görev:
*/5 * * * * /home/user/script.sh

Her pazar günü saat 01:00’te çalışan bir görev:
0 1 * * 0 /home/user/script.sh
> Bu örneklerde belirli zaman aralıklarında bir scriptin otomatik olarak çalıştırılması gösteriliyor.

-------------------------------------

## 5. Temel Cron Komutları
Cronjob’lar, crontab komutu kullanılarak yönetilir.
Aşağıda cronjob kullanımı için en temel ve gerekli komutlar yer almaktadır.

crontab -e  
Kullanıcının cron görevlerini eklemesini veya düzenlemesini sağlar.

crontab -l  
Tanımlı cronjob’ları listeler.

crontab -r  
Tanımlı tüm cronjob’ları siler.

crontab -u kullanici_adi -e  
Başka bir kullanıcıya ait cronjob’ları düzenlemek için kullanılır.
(Yönetici yetkisi gerektirir)

> Not: Cron servisini başlatmak veya durdurmak için systemctl komutları kullanılabilir.  
> Örn: sudo systemctl start cron

