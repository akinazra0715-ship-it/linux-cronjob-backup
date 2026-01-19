#!/bin/bash 
#OSOP Linux Cronjob Backup

# Bu dosyada cronjob komutu için örnek bir senaryo ve gerekli kodları yazacağız

## Örnek Senaryo
# Her gün saat 18:00’de /home/azra/important_files klasöründeki tüm .txt dosyalarını /home/azra/backup klasörüne kopyalamak istiyoruz.


# Yapılacaklar:
# 1. Backup klasörünü önceden oluştur.
# 2. Cronjob mantığını öğren.
# 3. Scripti hazırlayıp test et.
# 4. Terminalde hangi dosyanın yedeklendiğini görebil.

# Kaynak ve yedek klasörleri tanımla
SOURCE="/home/azra/important_files"
DEST="/home/azra/backup"  # Bu klasörü önceden oluşturmuş olacağız

# Dosyaları kopyala ve terminale yaz
for file in "$SOURCE"/*.txt
do
  cp "$file" "$DEST"
  echo "$(basename "$file") yedeklendi!"
done

# Cronjob örneği:
# 0 18 * * * /bin/bash /home/azra/osop-linux-cronjob-backup/scenario-cronjob
# Bu satırı Linux terminalinde 'crontab -e' ile ekleyerek günlük çalıştırabilirsiniz
