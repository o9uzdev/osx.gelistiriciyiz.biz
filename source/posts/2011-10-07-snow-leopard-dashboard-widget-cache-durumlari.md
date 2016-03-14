---
title: "Snow Leopard Dashboard Widget Cache durumları"
date: Oct 07, 2011 15:50
tags: snow-leopard,dashboard
---

`$HOME` folder’ınızın altında bulunan `~/Library/Caches` pek çok şeyi 
cache’liyormuş.READ_MORE
Dashboard Widget’larının cache’lenmemesi için; `Cache.db` dosyasını silin.

```bash
cd Library/Caches/com.apple.dashboard.client/
rm Cache.db
```
Dikkat ederseniz `~/Library/Caches` altında başka pek çok şeyi de 
bulabilirsiniz... Eğer silerken sorun çıkarsa önce;

```bash
killall Dock
cd Library/Caches/com.apple.dashboard.client/
rm Cache.db
```

şeklinde deneyin...