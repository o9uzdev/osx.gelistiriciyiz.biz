---
title: "Macports ile Snow Leopard'a emacs-22.3 kurmak"
date: Dec 03, 2009 12:27
tags: osx,ports,snow-leopard,emacs
---

Her zaman olduğu gibi önce paketleri bir güncellemek lazım;

```bash
sudo port -v selfupdate
```

sonra;

```bash
sudo port upgrade outdated
```

ile eskiden kalan paketleri (*emacs için gerekebilecek ?*) güncelleyelim. Sonra;

```bash
sudo port install emacs
```

eğer kurulum, `emacs`’i build ederken patlarsa hemen patch işlemi yapacağız. 
Önce uygun patch’i [çekin](http://trac.macports.org/ticket/21335) bu ekrandan 
en güncel olanı seçin; ben bu işlemi yaptığım sırada **8 weeks ago** olan 
patch’i kurmuştum!

![Emacs Patch](/public/images/posts/2009-12-03-emacs-patch.png)

sonra; (*dosyayı Downloads’a attığınızı düşünüyorum*)

```bash
cd /opt/local/var/macports/build/_opt_local_var_macports_sources_rsync.macports.org_release_ports_editors_emacs/work/emacs-22.3
sudo patch -p0 < ~/Downloads/emacs-snow-leopard.patch
sudo port install emacs
```
