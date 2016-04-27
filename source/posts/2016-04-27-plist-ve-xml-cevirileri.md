---
title: "plist ve xml çevirileri"
date: Apr 27, 2016 12:18
tags: core,plist,xml
subtitle: Property List dosyası <-> XML
cover: https://infinit.io/_/35vPPLr.png
---

OS X ile çalışanların sıkça karşılaştığı bir dosya türüdür `.plist`READ_MORE

Bu tür dosyalar sıkıştırılmış `binary` haline getirilmiş dosyalardır. Bu dosyalar
genelde konfigürasyon bilgilerini tutmak için tasarlanmıştır. Eğer **Xcode**
kurulu ise bu `.plist` dosyalarını düzenlemek için ek araçlar mevcuttur.

Eğer kurulu değilse, bu dosyayı `.xml`’e çevirmek ve tekrar `.plist` yapmak
mümkündür:

```bash
plutil -convert xml1 dosya.plist         # plist -> xml oldu
                                         # şimdi dosya.plist’i herhangi bir
                                         # editörle açabilirsiniz!

plutil -convert binary1 dosya.plist      # dosya.plist tekrar binary oldu.
```