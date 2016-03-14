---
title: "Versiyon kontrol altında olmayan herşeyi SVN’e ekle"
date: Sep 17, 2010 09:55
tags: unix,svn,grep,awk,xargs
---

```bash
svn st | grep ? | awk '{print $2}' | xargs svn add
```

Versiyon kontrol altında bulunmayan tüm dosyaları svn’e ekler. Kaynak:

* [http://ff.im/qkVMe](http://ff.im/qkVMe)
* [http://friendfeed.com/fatih](http://friendfeed.com/fatih)
