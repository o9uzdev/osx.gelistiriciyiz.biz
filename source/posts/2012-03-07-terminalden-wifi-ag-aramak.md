---
title: "Terminal’den Wifi Ağ aramak"
date: Mar 07, 2012 09:21
tags: osx
---
```bash
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s
```

Eğer kısa yol yapmak isterseniz;

```bash
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/bin/airport
```