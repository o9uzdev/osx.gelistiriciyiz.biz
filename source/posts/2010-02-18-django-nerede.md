---
title: "django nerede ?"
date: Feb 18, 2010 16:16
tags: python,django
---

Hızla Python Path’e gitmek için; `/usr/local/bin/` altına `django-path.sh` 
diye bir dosya oluşturun:

```bash
cd /usr/local/bin/
sudo touch django-path.sh
sudo nano django-path.sh    # ya da hangi editör’ü kullanıyorsanız
```

ve içine;

```bash
DJANGO_PATH="`python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"`/django/"
cd $DJANGO_PATH
```

ekleyin; şimdi `~/.profile`’a bir **alias** ekleyin:

```bash
alias django='source /usr/local/bin/django-path.sh'
```

Terminal’i kapatıp açın yada; `source ~/.profile` yapın... Artık Terminal’de 
her **django-path.sh** yazdığınızda otomatik olarak `cd` yapmış olacaksınız...