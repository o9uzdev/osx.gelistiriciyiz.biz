---
title: "Django, i18n ve makemessages"
date: Dec 01, 2011 11:37
tags: django,lion
---
```bash
django-admin.py compilemessages
```
READ_MORE
Eğer aşağıdaki hata mesajını alırsanız:

    Error: errors happened while running xgettext on __init__.py
    /bin/sh: xgettext: command not found

Bu, `gettext` ile ilgili bir sorun yaşıyorsunuz anlamına gelir. 
OS X Lion’a geçmeden önce, [Macports](https://www.macports.org/) kullanıyordum 
ve `gettext`’i `ports`’tan kullanıyordum. Lion’la birlikte [Homebrew](http://brew.sh)’a geçtim.
Hata mesajını ilk gördüğüm an, hemen kontrol ettim, 
`brew`’dan `gettext`’i kurmuşum. Baktım sistemde `xgettext` diye bir 
executable yok?

Şans eseri google’da ararken **php** ve **locale** konusu ile ilgili bir 
yazının dibinde köşesinde gördüğüm 2 satır imdadıma yetişti.
Macports gerekli `$PATH` ayarlarını otomatik yapıyormuş. 
**Homebrew** bunu yapmadığı için elle eklemek gerekiyor. Gerekli path:

    /usr/local/Cellar/gettext/0.18.1.1/bin

Ya bunu `$PATH`’e ekleyin:

```bash
export PATH=/usr/local/Cellar/gettext/0.18.1.1/bin:$PATH
```

ya da ileride çıkabilecek güncellemeleri hesaba katarsanız;

```bash
ln -s /usr/local/Cellar/gettext/0.18.1.1/ /usr/local/Cellar/gettext/Current
```

şeklinde bir link yapıp path’e bu linki ekleyebilirsiniz:

```bash
export PATH=/usr/local/Cellar/gettext/Current/bin:$PATH
```

## Güncelleme: 3 Aralık 2011

Sevgili [Gökmen Görgen](https://github.com/gkmngrgn)’in yorumu ile anladımki bu işin kolayı şöyle:

```bash
brew install gettext
brew link gettext
```