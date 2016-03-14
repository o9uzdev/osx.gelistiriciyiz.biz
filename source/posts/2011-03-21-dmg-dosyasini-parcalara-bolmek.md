---
title: "dmg dosyasını parçalara bölmek"
date: Mar 21, 2011 21:24
tags: osx,dmg,hdiutil
---

6 GB’lık `bigfile.dmg` dosyasını, 2’şer GB’lık dosyalara bölelim:READ_MORE

```bash
hdiutil segment -segmentSize 2048m -o splitted bigfile.dmg
```

Bölünmüş dosyalar:

    splitted.dmg
    splitted.002.dmgpart
    splitted.003.dmgpart
