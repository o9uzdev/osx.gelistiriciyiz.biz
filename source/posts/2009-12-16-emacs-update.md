---
title: "Emacs update"
date: Dec 16, 2009 10:05
tags: unix,emacs,ports
---

Bildiğiniz gibi, ara ara, ports repository’sini güncelleyip, kullandığınız
paketlerin yenisi çıkmışmı diye kontrol etmeniz gerekiyor;

```bash
sudo port -v selfupdate
```

`emacs`’in **22.3.2** versiyonu çıkmış, hemen update etmek istiyoruz;

```bash
sudo port upgrade outdated
```

Herşey güzel giderken aynı geçen gün olduğu gibi patlıyor **compile** 
sırasında... Yine gidip patch dosyasını indirip **manual patch** yapmamız 
gerekiyor!

```bash
cd /opt/local/var/macports/build/_opt_local_var_macports_sources_rsync.macports.org_release_ports_editors_emacs/work/emacs-22.3
sudo patch -p0 < /Users/vigo/Downloads/patch-emacs-10.6.diff
sudo port install emacs
```

