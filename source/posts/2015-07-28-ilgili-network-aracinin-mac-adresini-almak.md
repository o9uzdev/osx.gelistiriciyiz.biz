---
title: İlgili network aracının mac adresini almak
date: Jul 28, 2015 21:00
tags: network
---

```bash
networksetup -getmacaddress en0 | awk '{print $3}'
```

ya da, [Ahmet Alp Balkan][link]’dan;

```bash
networksetup -getmacaddress en0 | grep -io '\([a-e0-9:]\+\)\{6\}'
```

[link]: http://disq.us/9c0bwt