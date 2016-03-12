---
title: Yosemite 10.10.4 - DNS Cache’i Resetlemek
date: Aug 10, 2015 16:40
tags: yosemite
---

```bash
sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder
```