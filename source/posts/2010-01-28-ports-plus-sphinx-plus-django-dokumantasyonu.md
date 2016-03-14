---
title: "ports + sphinx + django dökümantasyonu"
date: Jan 28, 2010 11:21
tags: osx,ports,python,django
---

## Güncelleme

`make html` komutunu `sudo` ile çalıştırmak gerekiyor! bunu unutmuşum (8

***

Django dökümantasyonunu local’den (*html*) olarak kullanmak için;

```bash
cd Documents/
svn co http://code.djangoproject.com/svn/django/trunk/docs/ django_docs
sudo port install py26-sphinx
```

sonra; `~/.profile`’da `$PATH`’e ekleme;

```bash
# Kullandığınız Python’nun 2.6 olduğunu ve ports’dan kurulduğunu varsayıyorum!
export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/:$PATH
```

sonra; yeni eklenenin çalışması için;

```bash
source ~/.profile
cd ~/Documents/django_docs
sudo make html
```

iş bitince; ilgili html’leri istediğiniz bir yere atın:

```bash
cd ~/Documents
mkdir DjangoDoc
cd DjangoDoc
cp -vR ~/Documents/django_docs/_build/html/ .
open index.html
```