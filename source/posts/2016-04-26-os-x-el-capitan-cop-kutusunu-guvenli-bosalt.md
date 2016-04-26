---
title: "OS X El Capitan Çöp Kutusunu Güvenli Boşalt"
date: Apr 26, 2016 09:35
tags: el-capitan,trash,secure,srm
subtitle: Çöp kutusu güvenli nasıl boşaltılır
# published: false
# cover:
author:
  name: "Tarık Kavaz"
  email: "tarikkavaz@gmail.com"
  link: "http://tarikkavaz.com"
  bio: "Front-end / UI Geliştiricisi"
---
OS X El Capitan'da Çöp kutusunu Finder menüsünden güvenli boşaltmak mümkün 
değil.READ_MORE

Bu işlemi `srm` komutunu kullanarak yapabilirz.

Tek bir dosya silmek için:

```bash
srm -zsv /Users/tarik/.Trash/dosya.txt
```

Klasör silmek için:

```bash
srm -rmv /Users/tarik/.Trash/klasor/
```

Tabiki `tarik` yerine kendi kullanıcı adını yazmayı unutmayın.

Çöp kutusunda olmayan dosyalar için aynı komut geçerlidir. Yapmanız gereken 
tek şey dosya/klasörün adresini vermek:

```bash
srm -zsv /klasor/dosya.txt
srm -rmv /klasor/
```
